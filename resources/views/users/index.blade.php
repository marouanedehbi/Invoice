@extends('layouts.master')


@section('content')
    <div class="row">
        <div class="col-lg-12 margin-tb mb-4">
            <div class="pull-left">
                <h2>Users Management </h2>
                <br>
                    <div class="float-end">
                        <a class="btn btn-success" href="{{ route('users.create') }}"> Create New User</a>
                    </div>

            </div>
        </div>
    </div>


    @if ($message = Session::get('success'))
        <div class="alert alert-success my-2">
            <p>{{ $message }}</p>
        </div>
    @endif

    <div class="row">
    <table class="table table-bordered table-hover table-striped">
        <tr>
            <th>Name</th>
            <th>Email</th>
            <th>Roles</th>
            <th width="280px">Action</th>
        </tr>
        @foreach ($data as $key => $user)
            <tr>
                <td>{{ $user->username }}</td>
                <td>{{ $user->email }}</td>
                <td>
                    @if(!empty($user->getRoleNames()))
                        @foreach($user->getRoleNames() as $v)
                            <label class="badge badge-secondary text-dark">{{ $v }}</label>
                        @endforeach
                    @endif
                </td>
                <td>

                    <form action="{{ route('users.destroy',$user->id) }}" method="POST">
                        <a class="btn btn-info" href="{{ route('users.show',$user->id) }}">Show</a>
                        <a class="btn btn-primary" href="{{ route('users.edit',$user->id) }}">Edit</a>
                        @method('DELETE')
                        @csrf
                        <button class="btn btn-danger" href="{{ route('users.destroy',$user->id) }}">Delete</button>

                    </form>

                </td>
            </tr>
        @endforeach
    </table>
    </div>
    </div>
    </div>

@endsection
