<div class="table-responsive">
    @if ($jobs->count() > 0)
        <table class="table table-striped table-hover">
            <thead>
            <tr>
                <th>ID</th>
                <th>File Name</th>
                <th>Status</th>
                <th>Created At</th>
                <th>Updated At</th>
            </tr>
            </thead>
            <tbody>
            @foreach($jobs as $job)
                <tr>
                    <td>{{ $job->id }}</td>
                    <td>{{ $job->file_name }}</td>
                    <td>{{ $job->status_name }}</td>
                    <td>{{ $job->created_at }}</td>
                    <td>{{ $job->updated_at }}</td>
                </tr>
            @endforeach
            </tbody>
        </table>

        {{ $jobs->links() }}
    @else
        <h2>No data</h2>
    @endif
</div>
