@component('mail::message')
# Job Result

The file "{{ $fileName }}" processing has finished with status "{{ $status }}".

Thanks,<br>
{{ config('app.name') }}
@endcomponent
