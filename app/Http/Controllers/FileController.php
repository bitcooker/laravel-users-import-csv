<?php

namespace App\Http\Controllers;

use App\ImportJob;
use App\Http\Requests\UploadFile;
use App\Jobs\SaveUsers;
use App\JobStatus;
use Illuminate\Support\Facades\Session;
use Illuminate\Support\Facades\Storage;
use Illuminate\Support\Facades\Validator;
use Illuminate\Validation\ValidationException;

class FileController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('files.upload');
    }

    public function store()
    {
        $this->validate(request(), [
            'email' => 'nullable|email',
            'file' => 'required|file|mimes:csv,txt|max:10000',
        ]);

        $path = $this->uploadFile();

        $this->validateFile($path);

        $originalFileName = request()->file->getClientOriginalName();

        $fileUploadJob = ImportJob::create([
            'file_name' => $originalFileName,
            'status_id' => JobStatus::PROCESSING,
        ]);

        $email = request()->input('email');
        // Dispatch job to store the file's data to database
        SaveUsers::dispatch($fileUploadJob, $path, $originalFileName, $email)->delay(now());

        Session::flash('success', 'The file was uploaded and it is getting processed...');

        return redirect(url('jobs'));
    }

    private function validateFile($path)
    {
        $errors = [];
        $handle = fopen($path, 'r');
        if ($handle !== false) {
            $line = 0;
            while (($data = fgetcsv($handle, 0, ',')) !== FALSE) {
                $line++;

                $lineErrors = $this->validateCsvLine($data, $line);
                $errors = array_merge($errors, $lineErrors);
            }
            fclose($handle);
        } else {
            $errors[] = 'An error occurred during file opening';
        }

        if ($errors) {
            throw ValidationException::withMessages([
                'file' => $errors,
            ]);
        }
    }

    private function validateCsvLine(array $data, int $line)
    {
        $errorPrefix = "Line {$line}: ";
        $errors = [];
        $validCount = 4;
        $count = count($data);
        if ($count !== $validCount) {
            $errors[] = $errorPrefix."Contains invalid amount of columns. Valid amount is {$validCount}";
        } else {
            $user = ImportJob::lineToUserArray($data);

            $moreErrors = Validator::make(
                $user,
                (new UploadFile)->rules()
            )->errors()
            ->all();

            foreach ($moreErrors as $key => $error) {
                $moreErrors[$key] = $errorPrefix.$error;
            }

            $errors = array_merge($errors, $moreErrors);
        }

        return $errors;
    }

    private function uploadFile()
    {
        request()->file->store('uploads');
        $hashName = request()->file->hashName();
        return Storage::disk('uploads')->path($hashName);
    }
}
