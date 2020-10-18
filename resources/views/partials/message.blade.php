{{-- Success messages --}}
@if(session('success'))
    <div class="alert alert-success">{{ session('success') }}</div>
@endif

{{-- Error messages --}}
@if(session('error'))
    <div class="alert alert-danger">{{ session('error') }}</div>
@endif
