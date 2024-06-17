@extends('layouts.master')
@section('css')

    <link href="{{ URL::asset('assets/plugins/datatable/css/dataTables.bootstrap4.min.css') }}" rel="stylesheet" />
    <link href="{{ URL::asset('assets/plugins/datatable/css/buttons.bootstrap4.min.css') }}" rel="stylesheet">
    <link href="{{ URL::asset('assets/plugins/datatable/css/responsive.bootstrap4.min.css') }}" rel="stylesheet" />
    <link href="{{ URL::asset('assets/plugins/datatable/css/jquery.dataTables.min.css') }}" rel="stylesheet">
    <link href="{{ URL::asset('assets/plugins/datatable/css/responsive.dataTables.min.css') }}" rel="stylesheet">
    <link href="{{ URL::asset('assets/plugins/select2/css/select2.min.css') }}" rel="stylesheet">
    <!--Internal   Notify -->
    <link href="{{ URL::asset('assets/plugins/notify/css/notifIt.css') }}" rel="stylesheet" />

    <link href="{{ URL::asset('assets/css/my.css') }}" rel="stylesheet" />


@endsection
@section('title')
    | Recapitulatif de devis
@stop

@section('page-header')
    <!-- breadcrumb -->
    <div class="breadcrumb-header justify-content-between">
        <div class="my-auto">
            <div class="d-flex">
                <h4 class="content-title mb-0 my-auto">Devis </h4> <span class="text-muted mt-1 tx-13 mr-2 mb-0">/
                     Recapitulatif de devis </span>
            </div>
        </div>
    </div>
    <!-- breadcrumb -->
@endsection
@section('content')

    @if (session()->has('Add'))
        <div class="alert alert-success alert-dismissible fade show" role="alert">
            <strong>{{ session()->get('Add') }}</strong>
            <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                <span aria-hidden="true">&times;</span>
            </button>
        </div>
    @endif


    @if (session()->has('Edit'))
        <div class="alert alert-success alert-dismissible fade show" role="alert">
            <strong>{{ session()->get('Edit') }}</strong>
            <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                <span aria-hidden="true">&times;</span>
            </button>
        </div>
    @endif


    @if (session()->has('delete'))
        <div class="alert alert-danger alert-dismissible fade show" role="alert">
            <strong>{{ session()->get('delete') }}</strong>
            <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                <span aria-hidden="true">&times;</span>
            </button>
        </div>
    @endif

    @if (session()->has('Error'))
        <div class="alert alert-danger alert-dismissible fade show" role="alert">
            <strong>{{ session()->get('Error') }}</strong>
            <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                <span aria-hidden="true">&times;</span>
            </button>
        </div>
    @endif
    <div>
        @if (session()->has('message'))

            <div class="alert alert-success">

                {{ session('message') }}

            </div>

        @endif

    </div>
    <!-- row -->
    <div class="row">

        <div class="col-lg-12 col-md-12">
            <div class="card">
                <div class="card-body">

                        {{ csrf_field() }}
                        {{-- 1 --}}

                        <div class="row">
                            <div class="col">
                                <label  class="control-label">N° de devis : </label>
                                <span class="text-success"> &nbsp;&nbsp;{{ $estimate->estimate_number }} </span>

                            </div>
                            <div class="col">
                                <label  class="control-label">Société : </label>
                                <span class="text-success"> &nbsp;&nbsp;{{ $estimate->societe->societe_name }} </span>

                            </div>
                            <div class="col">
                                <label>Date Devis : </label>
                                <span class="text-success"> &nbsp;&nbsp;<?= (isset($estimate->estimate_date) ? $newDate = date("d-m-Y", strtotime($estimate->estimate_date)) :""); ?>
                                </span>
                            </div>

                            <div class="col">
                                <label>Date Prestation :</label>
                                <span class="text-success"> &nbsp;&nbsp;
                                <?= (isset($estimate->prestation_date) ? $newDate = date("d-m-Y", strtotime($estimate->prestation_date)) :""); ?>
                                </span>
                            </div>

                        </div>
                        <br>
                        {{-- 2 --}}
                        <div class="row">
                            <div class="col">
                                <label class="control-label">Type de mission : </label>
                                <span class="text-success"> &nbsp;&nbsp;
                                {{ $estimate->missionType->mission_type_name }}
                                </span>
                            </div>
                            <div class="col">
                                <label class="control-label">Nom du client</label>
                                <span class="text-success"> &nbsp;&nbsp;
                                {{  $estimate->client_name }}
                                </span>
                             </div>

                             <div class="col">
                                 <label class="control-label">ICE</label>
                                 <span class="text-success"> &nbsp;&nbsp;
                                 {{  $estimate->ice }}
                                 </span>
                             </div>

                             <div class="col">
                                 <label class="control-label">Adresse</label>
                                 <span class="text-success"> &nbsp;&nbsp;
                                 {{  $estimate->client_adress }}
                                 </span>
                             </div>
                         </div>
                         <br>
                         {{-- 3 --}}
                        <div class="row">
                            <div class="col-xl-3">
                                <label for="text">Objet : </label>
                                <span class="text-success"> &nbsp;&nbsp;{{ $estimate->object }}</span>
                            </div>
                            <div class="col-xl-9">
                                <label >Détail de la mission : </label>
                                <span class="text-success"> &nbsp;&nbsp;
                                {{  $estimate->detail }}
                                </span>
                            </div>
                        </div>
                        <br>
                        {{-- 4 --}}
                        <div class="row">
                            <div class="col">
                                <label for="inputName" class="control-label" >Avance (MAD) : </label>
                                <span class="text-success"> &nbsp;&nbsp;
                                {{  $estimate->advance }}
                                </span>
                            </div>
                            <div class="col">
                                <label class="control-label" >Remise (%) : </label>
                                <span class="text-success"> &nbsp;&nbsp;
                                {{  $estimate->discount }}
                                </span>
                            </div>

                            <div class="col">
                                <label for="inputName" class="control-label">Commission (MAD) : </label>
                                <span class="text-success"> &nbsp;&nbsp;
                                {{  $estimate->commission }}
                                </span>
                            </div>
                            <div class="col">
                                <label class="control-label">Mode de paiement : </label>
                                <span class="text-success"> &nbsp;&nbsp;
                                {{  $estimate->payment_mode }}
                                </span>
                            </div>
                        </div>

                        <br>

                        {{-- 5 --}}
                        <div class="row">
                            <div class="col-xl-2">
                                <span style="font-style:italic"> &nbsp;&nbsp;
                                    Prestations :
                                </span>
                            </div>

                            <div class="col-xl-10">
                                <div class="table-responsive">
                                    <table id="example11" class="table table-bordered mg-b-0 text-md-nowrap " >
                                        <thead>
                                        <tr>
                                            <th   style="text-align:center; vertical-align: middle;">Description</th>
                                            <th  style="text-align:center; vertical-align: middle;">Quantite</th>
                                            <th  style="text-align:center; vertical-align: middle;" >Montant (MAD)</th>
                                            <th  style="text-align:center; vertical-align: middle;">TVA (%)</th>
                                        </tr>
                                        </thead>
                                        <tbody>
                                        @php
                                            $i = 0;

                                        @endphp
                                        @foreach ($tableDataPres as $pres)

                                            @php
                                                $i++;
                                            @endphp
                                            <tr>
                                                <td><span class="text-success"> <pre>{{ $pres->description }}</pre> </span> </td>
                                                <td style="text-align:center; vertical-align: middle;">
                                                    <span class="text-success">{{ $pres->quantity }}</span>
                                                </td>
                                                <td style="text-align:center; vertical-align: middle;">
                                                    <span class="text-success">{{ $pres->amount }}</span>
                                                </td>
                                                <td style="text-align:center; vertical-align: middle;">
                                                    <span class="text-success">{{ $pres->VAT * 100}}%</span>
                                                </td>

                                            </tr>
                                        @endforeach
                                        </tbody>
                                    </table>

                                </div>
                            </div>
                        </div>
                        <br>
                        {{-- 6 --}}
                        <div class="row">
                            <div class="col-xl-2">
                                <span style="font-style:italic"> &nbsp;&nbsp;
                                Frais de mission :</span>
                            </div>

                            <div class="col-xl-10">
                                <div class="table-responsive">
                                    <table id="example10" class="table table-bordered mg-b-0 text-md-nowrap" >
                                        <thead>
                                        <tr>
                                            <th style="text-align:center; vertical-align: middle;">Description</th>
                                            <th style="text-align:center; vertical-align: middle;">Montant  (MAD)</th>
                                        </tr>
                                        </thead>
                                        <tbody>
                                        @php
                                            $i = 0;
                                        @endphp
                                        @foreach ($tableFees as $fees)
                                            @php
                                                $i++;
                                            @endphp
                                            <tr>

                                                <td><pre>{{ $fees->description }}</pre> </td>
                                                <td style="text-align:center; vertical-align: middle;">
                                                    <span class="text-success">  {{ $fees->amount }}</span>
                                                </td>

                                            </tr>
                                        @endforeach
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                        <br>
                        {{-- 7 --}}

                        <div class="row">
                            <div class="col">
                                <label class="control-label">Reliquat à prevoir (MAD) : </label>
                                <span class="text-success"> &nbsp;&nbsp;
                                {{ $estimate->remainder }}
                                </span>
                            </div>


                            <div class="col">
                                <label class="control-label">Montant HT (MAD) : </label>
                                <span class="text-success"> &nbsp;&nbsp;
                                {{ $estimate->totalHT }}
                                </span>
                            </div>

                            <div class="col">
                                <label class="control-label">Montant Total TTC (MAD) : </label>
                                <span class="text-success"> &nbsp;&nbsp;
                                {{ $estimate->totalTTC }}
                                </span>
                            </div>
                            <div class="col">
                                <label class="control-label">Montant Total TTC 2 (MAD) : </label>
                                <span class="text-success"> &nbsp;&nbsp;
                                {{ $estimate->totalTTC2 }}
                                </span>
                            </div>

                        </div>
                        <br>
                        <div class="row">
                            <div class="col-xl-4">
                            </div>
                            <div class="col-xl-2">
                                <div class="d-flex justify-content-center">
                                    <button type="button" onclick= " window.location.href = '{{ url("print_estimate") }}/{{ $estimate->id }}';"
                                        class="btn btn-success  hidden-print" >
                                     <span class="fas fa-print" aria-hidden="true">
                                     </span>&nbsp;Imprimer avec logo
                                      </button>

                                </div>
                            </div>

                            <div class="col-xl-2">
                                <div class="d-flex justify-content-center">
                                    <button type="button" onclick= " window.location.href = '{{ url("print_estimate_no_logo") }}/{{ $estimate->id }}';"
                                             class="btn btn-secondary  hidden-print" >
                                     <span class="fas fa-print" aria-hidden="true">
                                     </span>&nbsp;Imprimer sans logo
                                    </button>

                                </div>
                            </div>
                            <div class="col-xl-4">
                            </div>

                        </div>

                </div>


            </div>
            <!-- row closed -->
        </div>


        <!-- add modal fees-->


        <!-- Container closed -->
    </div>
    <!-- main-content closed -->
@endsection

@section('js')
    <!-- Internal Data tables -->
    <script src="{{ URL::asset('assets/plugins/datatable/js/jquery.dataTables.min.js') }}"></script>
    <script src="{{ URL::asset('assets/plugins/datatable/js/dataTables.dataTables.min.js') }}"></script>
    <script src="{{ URL::asset('assets/plugins/datatable/js/dataTables.responsive.min.js') }}"></script>
    <script src="{{ URL::asset('assets/plugins/datatable/js/dataTables.bootstrap4.js') }}"></script>
    <script src="{{ URL::asset('assets/plugins/datatable/js/dataTables.buttons.min.js') }}"></script>
    <script src="{{ URL::asset('assets/plugins/datatable/js/jszip.min.js') }}"></script>
    <script src="{{ URL::asset('assets/plugins/datatable/js/vfs_fonts.js') }}"></script>
    <script src="{{ URL::asset('assets/plugins/datatable/js/buttons.html5.min.js') }}"></script>
    <script src="{{ URL::asset('assets/plugins/datatable/js/buttons.print.min.js') }}"></script>
    <script src="{{ URL::asset('assets/plugins/datatable/js/buttons.colVis.min.js') }}"></script>
    <script src="{{ URL::asset('assets/plugins/datatable/js/responsive.bootstrap4.min.js') }}"></script>
    <!--Internal  Datatable js -->
    <script src="{{ URL::asset('assets/js/table-data.js') }}"></script>
    <!-- Internal Prism js-->
    <script src="{{ URL::asset('assets/plugins/prism/prism.js') }}"></script>
    <!--Internal  Datepicker js -->
    <script src="{{ URL::asset('assets/plugins/jquery-ui/ui/widgets/datepicker.js') }}"></script>
    <!-- Internal Select2 js-->
    <script src="{{ URL::asset('assets/plugins/select2/js/select2.min.js') }}"></script>
    <!-- Internal Modal js-->
    <script src="{{ URL::asset('assets/js/modal.js') }}"></script>


@endsection
