<?php

namespace App\Jobs;

use App\Imports\ImportUsers;
use App\Mail\JobResultMail;
use Illuminate\Bus\Queueable;
use Illuminate\Contracts\Queue\ShouldQueue;
use Illuminate\Foundation\Bus\Dispatchable;
use Illuminate\Queue\InteractsWithQueue;
use Illuminate\Queue\SerializesModels;
use Illuminate\Support\Facades\Mail;

class SendEmail implements ShouldQueue
{
    use Dispatchable, InteractsWithQueue, Queueable, SerializesModels;

    private $email;
    private $fileName;
    private $status;

    /**
     * Create a new job instance.
     * @param $email
     * @param $fileName
     * @param $status
     */
    public function __construct($email, $fileName, $status)
    {
        $this->email = $email;
        $this->fileName = $fileName;
        $this->status = $status;
    }

    /**
     * Execute the job.
     *
     * @return void
     */
    public function handle()
    {
        Mail::to($this->email)->send(new JobResultMail($this->fileName, $this->status));
    }
}
