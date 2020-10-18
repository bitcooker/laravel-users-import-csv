<?php

namespace App\Mail;

use Illuminate\Bus\Queueable;
use Illuminate\Contracts\Queue\ShouldQueue;
use Illuminate\Mail\Mailable;
use Illuminate\Queue\SerializesModels;

class JobResultMail extends Mailable
{
    use Queueable, SerializesModels;

    private $status;
    private $fileName;

    /**
     * Create a new message instance.
     *
     * @param $fileName
     * @param $status
     */
    public function __construct($fileName, $status)
    {
        $this->fileName = $fileName;
        $this->status = $status;
    }

    /**
     * Build the message.
     *
     * @return $this
     */
    public function build()
    {
        return $this->markdown('emails.job_result', [
            'status' => $this->status,
            'fileName' => $this->fileName,
        ]);
    }
}
