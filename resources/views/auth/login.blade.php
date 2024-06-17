@extends('layouts.master2')

@section('title')
 Veuillez s'authentifier
@stop


@section('css')
<!-- Sidemenu-respoansive-tabs css -->
<link href="{{URL::asset('assets/plugins/sidemenu-responsive-tabs/css/sidemenu-responsive-tabs.css')}}" rel="stylesheet">
@endsection
@section('content')



        <div class="container-fluid">
            <div class="row no-gutter">
                <!-- The image half -->
                <!-- The content half -->

                <div class="col-md-6 col-lg-6 col-xl-6 d-none d-md-flex bg-white">
                    <div class="row wd-100p mx-auto text-center">
                        <div class="col-md-12 col-lg-12 col-xl-12 my-auto mx-auto wd-100p">
                            <img src="{{URL::asset('assets/img/media/login.png')}}" class="my-auto ht-xl-100p wd-md-100p wd-xl-100p mx-auto" alt="logo">
                        </div>
                    </div>
                </div>

                <div class="col-md-6 col-lg-6 col-xl-5 bg-white">
                    <div class="login d-flex align-items-center py-2">
                        <!-- Demo content-->
                        <div class="container p-0">
                            <div class="row">
                                <div class="col-md-10 col-lg-10 col-xl-9 mx-auto">
                                    <div class="card-sigin">
                                        <div class="mb-5 d-flex"> <a href="{{ url('/' . $page='.') }}"><img src="{{URL::asset('assets/img/media/login.png')}}" class="sign-favicon ht-40" alt="logo"></a><h1 class="main-logo1 ml-1 mr-0 my-auto tx-28">Gest Fact</h1></div>
                                        <div class="card-sigin">
                                            @if (Route::has('register'))
                                                <li class="nav-item">
                                                    <a class="nav-link" href="{{ route('register') }}">{{ __('Register') }}</a>
                                                </li>
                                            @endif
                                            <div class="main-signup-header">
                                                <h2>Bienvenu</h2>
                                                <h5 class="font-weight-semibold mb-4"> Veuillez s'authentifier</h5>
                                                <form method="POST" action="{{ route('login') }}">
                                                 @csrf
                                                    @if (session()->has('errors'))
                                                        <div class="alert alert-danger alert-dismissible fade show" role="alert">
                                                            <strong>{{ $errors->first('username') }} </strong>
                                                            <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                                                                <span aria-hidden="true">&times;</span>
                                                            </button>
                                                        </div>
                                                    @endif
                                                    <div class="input-group mb-3">
                                                        <!--   <input id="email" type="email" class="form-control @error('email') is-invalid @enderror" name="email" value="{{ old('email') }}" required autocomplete="email" autofocus> -->

                                                        <input id="username" type="text" class="form-control @error('username;') is-invalid @enderror" name="username" placeholder="Login"  value="{{ old('username') }}" required autocomplete="username" autofocus>
                                                        <div class="input-group-append">
                                                            <div class="input-group-text">
                                                                <span class="fas fa-user"></span>
                                                            </div>
                                                        </div>
                                                        <!--  error('email') -->
                                                        @error('username')

                                                     <span class="invalid-feedback" role="alert">
                                                     <strong>{{ $message }}</strong>
                                                     </span>
                                                     @enderror
                                                    </div>

                                                 <div class="input-group mb-3">
                                                      <input id="password" type="password" class="form-control @error('password') is-invalid @enderror" name="password" required autocomplete="current-password"  placeholder="Mot de passe">
                                                      <div class="input-group-append">
                                                             <div class="input-group-text">
                                                                 <span class="fas fa-lock"></span>
                                                             </div>
                                                      </div>
                                                      @error('password')
                                                      <span class="invalid-feedback" role="alert">
                                                      <strong>{{ $message }}</strong>
                                                      </span>
                                                      @enderror
                                                 </div>
                                                  <div class="form-group row">
                                                      <div class="col-md-6 offset-md-4">
                                                           <div class="form-check">
                                                                <input class="form-check-input" type="checkbox" name="remember" id="remember" {{ old('remember') ? 'checked' : '' }}>

                                                                <label class="form-check-label" for="remember">
                                                                       {{ __('Se souvenir')}}
                                                                </label>
                                                           </div>
                                                       </div>
                                                   </div>

                                                    <button type="submit" class="btn btn-main-primary btn-block">
                                                    {{ __('Valide' )}}
                                                    </button>
                                                </form>
                                                @if (Route::has('password.request'))
                                                    <li class="nav-item">
                                                        <a class="btn btn-link" href="{{ route('password.request') }}">
                                                            {{ __('Forgot Your Password?') }}
                                                        </a>
                                                    </li>
                                                @endif
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div><!-- End -->
                    </div>
                </div><!-- End -->

                <div class="col-md-6 col-lg-6 col-xl-1 d-none d-md-flex bg-white">

                </div>
            </div>
        </div>
@endsection
@section('js')
@endsection
