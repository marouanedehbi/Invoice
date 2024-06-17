<div class="container">
    <div class="row">
        <div class="col-md-10 col-md-offset-1">
            <form class="form-horizontal" action="{{ route('store.jsvalidate') }}"
                  role="form" method="GET" id="my-form">
                {{ csrf_field() }}
                <div class="form-group">
                    <label class="col-md-4 control-label">Email</label>
                    <div class="col-md-6">
                        <input type="text" class="form-control" name="email">
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-md-4 control-label">Games</label>
                    <div class="col-md-6">
                        <input type="text" class="form-control" name="games">
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-md-4 control-label">Reason</label>
                    <div class="col-md-6">
                        <textarea name="reason"></textarea>
                    </div>
                </div>
                <div>
                    <input type="submit">
                </div>
            </form>
        </div>
    </div>
</div>
<!-- Scripts -->
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.3.1/js/bootstrap.min.js"></script>

<!-- Laravel Javascript Validation -->
<script type="text/javascript" src="{{ asset('vendor/jsvalidation/js/jsvalidation.js')}}"></script>
{!! $validator->selector('#my-form') !!}
