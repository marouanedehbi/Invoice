@extends('layouts.master')


@section('content')
    <div class="row">
        <div class="col-lg-12 margin-tb mb-4">
            <div class="pull-left">
                <h2>Edit User </h2>
                <br>
                    <div class="float-end">
                        <a class="btn btn-primary" href="{{ route('users.index') }}"> Back</a>
                    </div>
            </div>
        </div>
    </div>


    @if (count($errors) > 0)
        <div class="alert alert-danger">
            <strong>Whoops!</strong> There were some problems with your input.<br><br>
            <ul>
                @foreach ($errors->all() as $error)
                    <li>{{ $error }}</li>
                @endforeach
            </ul>
        </div>
    @endif
<div class="row">

    <form action="{{ route('users.update', $user->id) }}" method="POST">
        @method('PUT')
        {{ csrf_field() }}
        <div class="row">
            <div class="col-xl-2">
                <div class="form-group">
                    <strong>&nbsp;Name:</strong>
                    <input type="text" value="{{ $user->username }}" name="username" class="form-control"
                           placeholder="Name">
                </div>
            </div>
            <div class="col-xl-2">
                <div class="form-group">
                    <strong>Email:</strong>
                    <input type="email" name="email" value="{{ $user->email }}" class="form-control"
                           placeholder="Email">
                </div>
            </div>
            <div class="col-xl-2">
                <div class="form-group">
                    <strong>Password:</strong>
                    <input type="password" name="password" class="form-control"
                           placeholder="Password">
                </div>
            </div>
            <div class="col-xl-2">
                <div class="form-group">
                    <strong>Confirm Password:</strong>
                    <input type="password" name="confirm-password" class="form-control"
                           placeholder="Confirm Password">
                </div>
            </div>
            <div class="col-xl-2">
                <div class="form-group">
                    <strong>Role:</strong>
                    <select class="form-control multiple" multiple name="roles[]">
                        @foreach ($roles as $role)
                            <option value="{{ $role }}">{{ $role }}</option>
                        @endforeach
                    </select>
                </div>
            </div>
            <div class="col-xl-2">
               <br>
                <button type="submit" class="btn btn-primary">Submit</button>
            </div>
        </div>
    </form>
</div>
    </div>
    </div>
@endsection
