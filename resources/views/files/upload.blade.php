@extends('layouts.app')

@section('content')

    <div class="row">
        <div class="col-md-4">
            <form method="POST" action="{{ route('files.store') }}" enctype="multipart/form-data">
                @csrf
                <div class="form-group d-flex flex-column">
                    <label for="email">If you specify an email below you will get a data import status message</label>
                    <input type="text" name="email" class="py-2" placeholder="Email" value="{{ old('email') }}">
                    <small class="text-danger">{{ $errors->first('email') }}</small>
                </div>

                <div class="form-group d-flex flex-column">
                    <label for="file">Choose File</label>
                    <input type="file" name="file" class="mb-2" required>

                    @foreach ($errors->get('file') as $error)
                        <small class="text-danger">{{ $error }}</small>
                    @endforeach
                </div>

                <button type="submit" name="submit" class="btn btn-primary">Upload</button>
            </form>
        </div>
    </div>

@endsection
