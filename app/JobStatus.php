<?php

namespace App;

class JobStatus extends BaseModel
{
    const PROCESSING = 1;
    const DONE = 2;
    const FAILED = 3;
}
