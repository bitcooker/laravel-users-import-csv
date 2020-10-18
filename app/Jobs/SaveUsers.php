<?php

namespace App\Jobs;

use App\ImportJob;
use App\Imports\ImportUsers;
use App\JobStatus;
use App\User;
use Carbon\Carbon;
use Exception;
use Illuminate\Bus\Queueable;
use Illuminate\Contracts\Queue\ShouldQueue;
use Illuminate\Foundation\Bus\Dispatchable;
use Illuminate\Queue\InteractsWithQueue;
use Illuminate\Queue\SerializesModels;

class SaveUsers implements ShouldQueue
{
    use Dispatchable, InteractsWithQueue, Queueable, SerializesModels;

    private $fileUploadJob;
    private $path;
    private $email;
    private $fileName;

    /**
     * Create a new job instance.
     *
     * @param $fileUploadJob
     * @param $path
     * @param $fileName
     * @param null $email
     */
    public function __construct($fileUploadJob, $path, $fileName, $email = null)
    {
        $this->fileUploadJob = $fileUploadJob;
        $this->path = $path;
        $this->fileName = $fileName;
        $this->email = $email;
    }

    /**
     * Execute the job.
     *
     * @return void
     */
    public function handle()
    {
        $this->updateOrCreateUsers($this->path);

        $this->fileUploadJob->update(['status_id' => JobStatus::DONE]);

        $this->dispatchEmailIfPassed($this->fileName, 'success');
    }

    private function updateOrCreateUsers($path)
    {
        $handle = fopen($path, 'r');
        while (!feof($handle)) {
            $data = fgetcsv($handle, 0, ',');

            $user = ImportJob::lineToUserArray($data);

            User::updateOrCreate([
                'phone' => $user['phone'],
            ], [
                'name' => $user['name'],
                'address' => $user['address'],
                'gender_id' => $user['gender_id'],
            ]);
        }
        fclose($handle);
    }

    public function failed(Exception $e)
    {
        // Update the job status
        $this->fileUploadJob->update(['status_id' => JobStatus::FAILED]);

        $this->dispatchEmailIfPassed($this->fileName, 'failed');
    }

    private function dispatchEmail($fileName, $status)
    {
        SendEmail::dispatch($this->email, $fileName, $status)->delay(Carbon::now());
    }

    private function dispatchEmailIfPassed($fileName, $status)
    {
        // If email was passed
        if ($this->email) {
            $this->dispatchEmail($fileName, $status);
        }
    }
}
