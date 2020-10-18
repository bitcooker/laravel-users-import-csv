@extends('layouts.app')

@section('content')

    <h1 class="text-center mt-3">Jobs</h1>

    <hr>

    <div class="row">
        <div class="col-md-12">
            @include('jobs.table', [
                'jobs' => $jobs,
            ])
        </div>
    </div>

@endsection
