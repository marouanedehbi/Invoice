@extends('layouts.master')
@section('css')
@endsection
@section('title')
    Modifier le règlement
@stop
@section('page-header')
    <!-- breadcrumb -->
    <div class="breadcrumb-header justify-content-between">
        <div class="my-auto">
            <div class="d-flex">
                <h4 class="content-title mb-0 my-auto">Facture</h4><span class="text-muted mt-1 tx-13 mr-2 mb-0">/
                    Modifier le règlement
                </span>
            </div>
        </div>

    </div>
    <!-- breadcrumb -->
@endsection
@section('content')

    @if ($errors->any())
        @foreach ($errors->all() as $error)
            <div class="alert alert-danger alert-dismissible fade show" role="alert">
                <strong>{{$error}}</strong>
                <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>

        @endforeach
    @endif

    <!-- row -->
    <div class="row">
        <div class="col-lg-12 col-md-12">
            <div class="card">
                <div class="card-body">
                    <form action="{{ route('invoices.status_update', ['id' => $invoices->id]) }}" method="post" autocomplete="off">
                        {{ csrf_field() }}
                        {{-- 1 --}}
                        <div class="row">
                            <div class="col">
                                <label for="inputName" class="control-label">N° de facture : </label>
                                <input type="hidden" name="invoice_id" value="{{ $invoices->id }}">
                                <input type="text" class="form-control" id="inputName" name="invoice_number"
                                      value="{{ $invoices->invoice_number }}" required
                                       readonly>
                            </div>



                            <div class="col">
                                <label>Société : </label>
                                <input class="form-control" name="societe"
                                       type="text"  value="{{ $invoices->societe->societe_name }}"
                                       required readonly>
                            </div>

							 <div class="col">
                                <label>Date Facture :</label>
                                <input class="form-control" name="invoice_Date" placeholder="YYYY-MM-DD"
                                       type="text" value="{{ (isset($invoices->invoice_date) ? $newDate = date("d-m-Y", strtotime($invoices->invoice_date)) :"") }}"
                                         readonly>
                            </div>

                        </div>
                        <br>
                        {{-- 2 --}}
                        <div class="row">
                            <div class="col">
                                <label for="inputName" class="control-label">Type de mission : </label>
                                <input class="form-control" name="Due_date" placeholder="YYYY-MM-DD"
                                       type="text"  value="{{ $invoices->missionType->mission_type_name }}"
                                       readonly>

                            </div>

                            <div class="col">
                                <label for="inputName" class="control-label">Nom du client :</label>
                                <input class="form-control" name="ClientName" id ="ClientName"
                                       value ="{{ $invoices->client_name }}" readonly>
                            </div>

                            <div class="col">
                                <label for="inputName" class="control-label">ICE :</label>
                                <input class="form-control" name="ICE" id ="ICE"
                                       type="text" value ="{{ $invoices->ice }}" readonly>
                            </div>
                        </div>
                        <br>

                        {{-- 3 --}}

                        <div class="row">

                            <div class="col">
                                <label for="inputName" class="control-label">Commission (MAD) :</label>
                                <input type="text" class="form-control  form-control-lg" style="text-align:right;" name="commission" id ="commission"
                                       oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');"
                                       value="{{ $invoices->commission }}" readonly>
                            </div>

                            <div class="col">
                                <label for="inputName" class="control-label">Remise appliquée (%) :</label>
                                <input type="text" class="form-control form-control-lg" id="Discount" name="Discount"
                                       oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');"
                                       value="{{ $invoices->discount }}" readonly>
                            </div>

                            <div class="col">
                                <label for="inputName" class="control-label">Montant après remise (MAD) :</label>
                                <input type="text" class="form-control form-control-lg" id="totalHTRem" name="totalHTRem"
                                       oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');"
                                       value="{{ $invoices->totalHTRem }}" readonly>
                            </div>

                        </div>

                        {{-- 4 --}}
                        <br>
                        <div class="row">
                            <div class="col">
                                <label for="inputName" class="control-label">Montant TVA (MAD) : </label>
                                <input type="text" class="form-control form-control-lg" id="MontantTVA" name="MontantTVA"
                                       oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');"
                                       value="{{ $invoices->montantTVA }}" readonly>
                            </div>

                            <div class="col">
                                <label for="inputName" class="control-label">Montant TTC (MAD) : </label>
                                <input type="text" class="form-control form-control-lg" id="MontantTTC" name="MontantTTC"
                                       oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');"
                                       value="{{ $invoices->totalTTC2 }}" readonly>
                            </div>
                        </div>

                        {{-- 5 --}}
                        <br>

                        <div class="row">
                            <div class="col">
                                <label for="inputName" class="control-label">Reste à payer (MAD) : </label>
                                <input type="text" class="form-control form-control-lg" id="restPay" name="restPay"
                                       oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');"
                                       value="{{ $invoices->remainder }}" readonly>
                            </div>
                            <div class="col">
                                <label for="selectStatus">Statut du paiement * : </label>
                                <select class="form-control form-control-lg" id="status" name="status" required onchange="myFunction3()">
                                    <option  value="1" {{ ($invoices->value_status== 1 ? "selected" :"") }} >Non payée</option>
                                    <option  value="2" {{ ($invoices->value_status== 2 ? "selected" :"") }} >Partiellement payée</option>
                                    <option  value="3" {{ ($invoices->value_status== 3 ? "selected" :"") }} >Payée</option>
                                </select>
                            </div>

                            <div class="col">
                                <label>Montant encaissé (MAD) * :  </label>
                                <input type="text" class="form-control form-control-lg" id="advance" name="advance"
                                       oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');"
                                       value="{{ $invoices->advance }}" required onkeyup="myFunction3()">
                            </div>

                            <div class="col">
                                <label>Date Paiement : </label>
                                <input class="form-control form-control-lg fc-datepicker @error('date_pay') is-invalid @enderror" name="date_pay" placeholder="DD-MM-YYYY"
                                       type="text" id = "date_pay"  value="{{ (isset($invoices->payment_date) ? $newDate = date("d-m-Y", strtotime($invoices->payment_date)) : "") }}">
                                @error('date_pay')
                                <div class="invalid-feedback">{{ $message }}</div>
                                @enderror
                            </div>

                            <input type="hidden" name="invoice_Date" id="invoice_Date" value="{{ (isset($invoices->invoice_date) ? $newDate = date("d-m-Y", strtotime($invoices->invoice_date)) :"") }}">
                        </div>
                        <br>

                        <div class="d-flex justify-content-center">
                            <button type="submit" class="btn btn-primary">Modifier le règlement</button>
                        </div>

                    </form>
                </div>
            </div>
        </div>
    </div>
    <!-- row closed -->
    </div>
    <!-- Container closed -->
    </div>
    <!-- main-content closed -->
@endsection
@section('js')

    <!-- Internal Select2 js-->
    <script src="{{ URL::asset('assets/plugins/select2/js/select2.min.js') }}"></script>
    <!--Internal  Form-elements js-->
    <script src="{{ URL::asset('assets/js/advanced-form-elements.js') }}"></script>
    <script src="{{ URL::asset('assets/js/select2.js') }}"></script>
    <!--Internal Sumoselect js-->
    <script src="{{ URL::asset('assets/plugins/sumoselect/jquery.sumoselect.js') }}"></script>
    <!--Internal  Datepicker js -->
    <script src="{{ URL::asset('assets/plugins/jquery-ui/ui/widgets/datepicker.js') }}"></script>
    <script src="{{URL::asset('assets/plugins/jquery-ui/ui/i18n/datepicker-fr.js')}}" charset="UTF-8"></script>
    <!--Internal  jquery.maskedinput js -->
    <script src="{{ URL::asset('assets/plugins/jquery.maskedinput/jquery.maskedinput.js') }}"></script>
    <!--Internal  spectrum-colorpicker js -->
    <script src="{{ URL::asset('assets/plugins/spectrum-colorpicker/spectrum.js') }}"></script>
    <!-- Internal form-elements js -->
    <script src="{{ URL::asset('assets/js/form-elements.js') }}"></script>

    <script>
        var date = $('.fc-datepicker').datepicker({
            dateFormat: 'dd-mm-yy'
        }).val();

    </script>
    <script>
        function myFunction3() {

            var valTTC = parseFloat(document.getElementById("MontantTTC").value );
            var selecStatPay = document.getElementById("status").value;
            if (selecStatPay == 1){
                document.getElementById("advance").value = parseFloat(0).toFixed(2);
                document.getElementById("restPay").value = parseFloat(valTTC).toFixed(2);
            }else if (selecStatPay == 2){
                var rlq  = 0;
                var avc = parseFloat(document.getElementById("advance").value);
                document.getElementById("restPay").value = parseFloat(valTTC).toFixed(2);
                if ((avc) && (avc >= 0) ){
                    rlq  = parseFloat(valTTC - avc);
                    document.getElementById("restPay").value = parseFloat(rlq).toFixed(2);
                }
            }else if (selecStatPay == 3){
                document.getElementById("advance").value = parseFloat(valTTC).toFixed(2);
                document.getElementById("restPay").value = parseFloat(0).toFixed(2);
            }
        }
    </script>
@endsection

