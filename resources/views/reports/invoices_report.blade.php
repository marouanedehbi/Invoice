@extends('layouts.master')
@section('css')
    <!-- Internal Data table css -->
    <link href="{{ URL::asset('assets/plugins/datatable/css/dataTables.bootstrap4.min.css') }}" rel="stylesheet" />
    <link href="{{ URL::asset('assets/plugins/datatable/css/buttons.bootstrap4.min.css') }}" rel="stylesheet">
    <link href="{{ URL::asset('assets/plugins/datatable/css/responsive.bootstrap4.min.css') }}" rel="stylesheet" />
    <link href="{{ URL::asset('assets/plugins/datatable/css/jquery.dataTables.min.css') }}" rel="stylesheet">
    <link href="{{ URL::asset('assets/plugins/datatable/css/responsive.dataTables.min.css') }}" rel="stylesheet">
    <link href="{{ URL::asset('assets/plugins/select2/css/select2.min.css') }}" rel="stylesheet">

    <!-- Internal Spectrum-colorpicker css -->
    <link href="{{ URL::asset('assets/plugins/spectrum-colorpicker/spectrum.css') }}" rel="stylesheet">

    <!-- Internal Select2 css -->
    <link href="{{ URL::asset('assets/plugins/select2/css/select2.min.css') }}" rel="stylesheet">

    @section('title')
        Rapport des factures
    @stop
@endsection
@section('page-header')
    <!-- breadcrumb -->
    <div class="breadcrumb-header justify-content-between">
        <div class="my-auto">
            <div class="d-flex">
                <h4 class="content-title mb-0 my-auto">Recherches</h4><span class="text-muted mt-1 tx-13 mr-2 mb-0">/
                factures</span>
            </div>
        </div>
    </div>
    <!-- breadcrumb -->
@endsection
@section('content')


    @if (count($errors) > 0)
        <div class="alert alert-danger">
            <button aria-label="Close" class="close" data-dismiss="alert" type="button">
                <span aria-hidden="true">&times;</span>
            </button>
            <strong>Erreur date : </strong>
            <ul>
                @foreach ($errors->all() as $error)
                    <li>{{ $error }}</li>
                @endforeach
            </ul>
        </div>
    @endif


    <!-- row -->
    <div class="row">

        <div class="col-xl-12">
            <div class="card mg-b-20">


                <div class="card-header pb-0">

                    <form action="{{ route('invoices.search') }}" method="POST" role="search" autocomplete="off">
                        {{ csrf_field() }}


                        <div class="col-lg-3">
                            <label class="rdiobox">
                                <input checked name="rdio" type="radio" value="1" id="type_div"> <span>Multi-critéres</span></label>
                        </div>


                        <div class="col-lg-3 mg-t-20 mg-lg-t-0">
                            <label class="rdiobox"><input name="rdio" value="2" type="radio"><span>N° facture</span></label>
                        </div><br>

                        <div class="row">
                              <!-- col-4 -->
                                <div class="col-lg-3 mg-t-20 mg-lg-t-0" id="societe">
                                    <p class="mg-b-10">Sociéte :</p>
                                    <select name="societe" id="societe" class="form-control SelectBox">
                                        <option value="0" selected>Sélectionner une option</option>
                                        @foreach ($societes as $societe)
                                            <option value="{{ $societe->id }}"> {{ $societe->societe_name }}</option>
                                        @endforeach
                                    </select>

                                </div>

                                <div class="col-lg-3 mg-t-20 mg-lg-t-0" id="type">
                                    <p class="mg-b-10">Type de mission :</p>
                                    <select name="missionType" id="missionType" class="form-control SelectBox" required>
                                        <!--placeholder-->
                                        <option value="0" selected>Sélectionner une option</option>
                                        @foreach ($missionTypes as $missionType)
                                            <option value="{{ $missionType->id }}"> {{ $missionType->mission_type_name }}</option>
                                        @endforeach
                                    </select>
                                </div>
                                <div class="col-lg-3 mg-t-20 mg-lg-t-0" id="client">
                                    <p class="mg-b-10">Client :</p>
                                    <input type="text" class="form-control" id="client" name="client"
                                           >

                                </div>

                                <div class="col-lg-3 mg-t-20 mg-lg-t-0" id="invoice_number">
                                    <p class="mg-b-10">N° Facture :</p>
                                    <input type="text" class="form-control" id="invoice_number" name="invoice_number">

                                </div><!-- col-4 -->
                            <div class="col-lg-3 mg-t-20 mg-lg-t-0" id="montantTTC">
                                <p class="mg-b-10">Montant TTC (MAD) :</p>
                                <input type="text" class="form-control" id="montantTTC" name="montantTTC"
                                       oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');">

                            </div><!-- col-4 -->

                        </div><br>
                        <div class="row">
                            <div class="col-lg-3" id="start_at">
                                <label for="exampleFormControlSelect1">Date facture debut :</label>
                                <div class="input-group">
                                    <input class="form-control fc-datepicker"
                                           name="start_at" placeholder="DD-MM-YYYY" type="text"
                                           value="{{ old('start_at') }}" maxlength="10">
                                    <div class="input-group-prepend">
                                        <div class="input-group-text">
                                            <i class="fas fa-calendar-alt"></i>
                                        </div>
                                    </div>
                                </div><!-- input-group -->
                            </div>

                            <div class="col-lg-3" id="end_at">
                                <label for="exampleFormControlSelect1">Date facture fin :</label>
                                <div class="input-group">
                                    <input class="form-control fc-datepicker" name="end_at"
                                           placeholder="DD-MM-YYYY" type="text"
                                           value="{{ old('end_at') }}" maxlength="10">
                                    <div class="input-group-prepend">
                                        <div class="input-group-text">
                                            <i class="fas fa-calendar-alt"></i>
                                        </div>
                                    </div>
                                </div><!-- input-group -->
                            </div>

                            <div class="col-lg-3" id="startPay_at">
                                <label for="exampleFormControlSelect1">Date paiement debut :</label>
                                <div class="input-group">
                                    <input class="form-control fc-datepicker"
                                           name="startPay_at" placeholder="DD-MM-YYYY" type="text"
                                           value="{{ old('startPay_at') }}" maxlength="10">
                                    <div class="input-group-prepend">
                                        <div class="input-group-text">
                                            <i class="fas fa-calendar-alt"></i>
                                        </div>
                                    </div>
                                </div><!-- input-group -->
                            </div>

                            <div class="col-lg-3" id="endPay_at">
                                <label for="exampleFormControlSelect1">Date paiement fin :</label>
                                <div class="input-group">
                                    <input class="form-control fc-datepicker" name="endPay_at"
                                           placeholder="DD-MM-YYYY" type="text"
                                           value="{{ old('endPay_at') }}" maxlength="10">
                                    <div class="input-group-prepend">
                                        <div class="input-group-text">
                                            <i class="fas fa-calendar-alt"></i>
                                        </div>
                                    </div>
                                </div><!-- input-group -->
                            </div>
                        </div>
<br>
                        <div class="row">
                            <div class="col-sm-5 col-md-5" >
                            </div>
                            <div class="col-sm-2 col-md-2" >
                                <button class="btn btn-primary btn-block">Recherche</button>
                            </div>
                        </div>
                    </form>

                </div>
                <div class="card-body">
                    <div class="table-responsive">
                        @if (isset($invoices))
                            <table id="example" class="table key-buttons text-md-nowrap" style=" text-align: center">
                                <thead>
                                <tr>
                                    <th  class="border-bottom-0">#</th>
                                    <th class="border-bottom-0" style = "vertical-align:middle">N° facture</th>
                                    <th class="border-bottom-0" style = "vertical-align:middle">Date facture</th>
                                    <th class="border-bottom-0" style = "vertical-align:middle">Date paiement</th>
                                    <th class="border-bottom-0" style = "vertical-align:middle">Societé</th>
                                    <th class="border-bottom-0" style = "vertical-align:middle">Type de mission</th>
                                    <th class="border-bottom-0" style = "vertical-align:middle">Client</th>
                                    <th class="border-bottom-0" style = "vertical-align:middle;">Montant HT</th>
                                    <th class="border-bottom-0" style = "vertical-align:middle;">Montant TVA</th>
                                    <th class="border-bottom-0" style = "vertical-align:middle;">Montant TTC</th>
                                    <th class="border-bottom-0" style = "vertical-align:middle;">Montant TTC 2</th>
                                    <th class="border-bottom-0" style = "vertical-align:middle">Statut</th>

                                </tr>
                                </thead>
                                <tbody>
                                    <?php $i = 0; ?>
                                @foreach ($invoices as $invoice)
                                        <?php $i++; ?>
                                    <tr>
                                        <td>{{ $i }}</td>
                                        <td>
                                            <a
                                                href="{{ url('invoices_details') }}/{{ $invoice->id }}">{{ $invoice->invoice_number }}
                                            </a>
                                        </td>
                                        <td>
                                                <?= (isset($invoice->invoice_date) ? $newDate = date("d-m-Y", strtotime($invoice->invoice_date)) :""); ?></td>
                                        <td>
                                                <?= (isset($invoice->payment_date) ? $newDate = date("d-m-Y", strtotime($invoice->payment_date)) :""); ?></td>
                                        <td>{{ $invoice->societe->societe_name }}</td>
                                        <td>{{ $invoice->missionType->mission_type_name }}</td>
                                        <td>{{ $invoice->client_name }}</td>
                                        <td>{{ $invoice->totalHT }}</td>
                                        <td>{{ $invoice->montantTVA }}</td>
                                        <td>{{ $invoice->totalTTC }}</td>
                                        <td>{{ $invoice->totalTTC2 }}</td>
                                        <td>
                                            @if ($invoice->value_status == 1)
                                                <span class="text-danger">{{ $invoice->status }}</span>
                                            @elseif ($invoice->value_status == 2)
                                                <span class="text-warning">{{ $invoice->status }}</span>
                                            @else
                                                <span class="text-success">{{ $invoice->status }}</span>
                                            @endif

                                        </td>
                                    </tr>
                                @endforeach
                                </tbody>
                                <tfoot>
                                    <tr>
                                        <th class="border-bottom-0" colspan="7" style = "vertical-align:middle; text-align:right">Total</th>
                                        <th class="border-bottom-0" style = "vertical-align:middle; color:red;  white-space: nowrap;"></th>
                                        <th class="border-bottom-0" style = "vertical-align:middle; color:red;  white-space: nowrap;"></th>
                                        <th class="border-bottom-0" style = "vertical-align:middle; color:red;  white-space: nowrap;"></th>
                                        <th class="border-bottom-0" style = "vertical-align:middle; color:red;  white-space: nowrap;"></th>
                                        <th class="border-bottom-0" style = "vertical-align:middle"></th>
                                    </tr>

                                </tfoot>
                            </table>

                        @endif
                    </div>
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
    <!-- Internal Data tables -->
    <script src="{{ URL::asset('assets/plugins/datatable/js/jquery.dataTables.min.js') }}"></script>
    <script src="{{ URL::asset('assets/plugins/datatable/js/dataTables.dataTables.min.js') }}"></script>
    <script src="{{ URL::asset('assets/plugins/datatable/js/dataTables.responsive.min.js') }}"></script>
    <script src="{{ URL::asset('assets/plugins/datatable/js/responsive.dataTables.min.js') }}"></script>
    <script src="{{ URL::asset('assets/plugins/datatable/js/jquery.dataTables.js') }}"></script>
    <script src="{{ URL::asset('assets/plugins/datatable/js/dataTables.bootstrap4.js') }}"></script>
    <script src="{{ URL::asset('assets/plugins/datatable/js/dataTables.buttons.min.js') }}"></script>
    <script src="{{ URL::asset('assets/plugins/datatable/js/buttons.bootstrap4.min.js') }}"></script>
    <script src="{{ URL::asset('assets/plugins/datatable/js/jszip.min.js') }}"></script>
    <script src="{{ URL::asset('assets/plugins/datatable/js/pdfmake.min.js') }}"></script>
    <script src="{{ URL::asset('assets/plugins/datatable/js/vfs_fonts.js') }}"></script>
    <script src="{{ URL::asset('assets/plugins/datatable/js/buttons.html5.min.js') }}"></script>
    <script src="{{ URL::asset('assets/plugins/datatable/js/buttons.print.min.js') }}"></script>
    <script src="{{ URL::asset('assets/plugins/datatable/js/buttons.colVis.min.js') }}"></script>
    <script src="{{ URL::asset('assets/plugins/datatable/js/dataTables.responsive.min.js') }}"></script>
    <script src="{{ URL::asset('assets/plugins/datatable/js/responsive.bootstrap4.min.js') }}"></script>
    <!--Internal  Datatable js -->
    <script src="{{ URL::asset('assets/js/table-data.js') }}"></script>

    <!--Internal  Datepicker js -->
    <script src="{{ URL::asset('assets/plugins/jquery-ui/ui/widgets/datepicker.js') }}"></script>
    <script src="{{URL::asset('assets/plugins/jquery-ui/ui/i18n/datepicker-fr.js')}}" charset="UTF-8"></script>
    <!--Internal  jquery.maskedinput js -->
    <script src="{{ URL::asset('assets/plugins/jquery.maskedinput/jquery.maskedinput.js') }}"></script>
    <!--Internal  spectrum-colorpicker js -->
    <script src="{{ URL::asset('assets/plugins/spectrum-colorpicker/spectrum.js') }}"></script>
    <!-- Internal Select2.min js -->
    <script src="{{ URL::asset('assets/plugins/select2/js/select2.min.js') }}"></script>
    <!--Internal Ion.rangeSlider.min js -->
    <script src="{{ URL::asset('assets/plugins/ion-rangeslider/js/ion.rangeSlider.min.js') }}"></script>
    <!--Internal  jquery-simple-datetimepicker js -->
    <script src="{{ URL::asset('assets/plugins/amazeui-datetimepicker/js/amazeui.datetimepicker.min.js') }}"></script>
    <!-- Ionicons js -->
    <script src="{{ URL::asset('assets/plugins/jquery-simple-datetimepicker/jquery.simple-dtpicker.js') }}"></script>
    <!--Internal  pickerjs js -->
    <script src="{{ URL::asset('assets/plugins/pickerjs/picker.min.js') }}"></script>
    <!-- Internal form-elements js -->
    <script src="{{ URL::asset('assets/js/form-elements.js') }}"></script>
    <script>
        var date = $('.fc-datepicker').datepicker({
            dateFormat: 'dd-mm-yy'
        }).val();

    </script>

    <script>
        $(document).ready(function() {
           // $('#example_filter').hide();
            $('#invoice_number').hide();
            $('input[type="radio"]').click(function() {
                if ($(this).attr('id') == 'type_div') {
                    $('#invoice_number').hide();
                    $('#client').show();
                    $('#montantTTC').show();
                    $('#societe').show();
                    $('#type').show();
                    $('#start_at').show();
                    $('#end_at').show();
					 $('#startPay_at').show();
                    $('#endPay_at').show();
                } else {
                    $('#invoice_number').show();
                    $('#client').hide();
                    $('#montantTTC').hide();
                    $('#societe').hide();
                    $('#type').hide();
                    $('#start_at').hide();
                    $('#end_at').hide();
					$('#startPay_at').hide();
                    $('#endPay_at').hide();
                }
            });
        });

    </script>


@endsection
