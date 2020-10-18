<?php

namespace App\Http\Controllers;

use App\ImportJob;

class JobController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $jobs = ImportJob::orderByDesc('id')->paginate(5);

        return view('jobs.index', compact('jobs'));
    }
}
