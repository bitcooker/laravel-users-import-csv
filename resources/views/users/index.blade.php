@extends('layouts.app')

@section('content')

    <h1 class="text-center mt-3">Users</h1>

    <hr>

    <div class="row">
        <div class="col-md-12">
            @include('users.table', [
                'users' => $users,
            ])
        </div>
    </div>

@endsection
