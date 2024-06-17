@extends('layouts.master')
@section('title')
    Factures partiellement payées
@stop
@section('css')
    <!-- Internal Data table css -->
    <link href="{{ URL::asset('assets/plugins/datatable/css/dataTables.bootstrap4.min.css') }}" rel="stylesheet" />
    <link href="{{ URL::asset('assets/plugins/datatable/css/buttons.bootstrap4.min.css') }}" rel="stylesheet">
    <link href="{{ URL::asset('assets/plugins/datatable/css/responsive.bootstrap4.min.css') }}" rel="stylesheet" />
    <link href="{{ URL::asset('assets/plugins/datatable/css/jquery.dataTables.min.css') }}" rel="stylesheet">
    <link href="{{ URL::asset('assets/plugins/datatable/css/responsive.dataTables.min.css') }}" rel="stylesheet">
    <link href="{{ URL::asset('assets/plugins/select2/css/select2.min.css') }}" rel="stylesheet">
    <!--Internal   Notify -->
    <link href="{{ URL::asset('assets/plugins/notify/css/notifIt.css') }}" rel="stylesheet" />
    <!---Internal Fileupload css-->
    <link href="{{ URL::asset('assets/plugins/fileuploads/css/fileupload.css') }}" rel="stylesheet" type="text/css" />
    <!---Internal Fancy uploader css-->
    <link href="{{ URL::asset('assets/plugins/fancyuploder/fancy_fileupload.css') }}" rel="stylesheet" />

@endsection
@section('page-header')
    <!-- breadcrumb -->
    <div class="breadcrumb-header justify-content-between">
        <div class="my-auto">
            <div class="d-flex">
                <h4 class="content-title mb-0 my-auto">Factures partiellement payées</h4><span class="text-muted mt-1 tx-13 mr-2 mb-0"> </span>
            </div>
        </div>

    </div>
    <!-- breadcrumb -->
@endsection
@section('content')

    @if (session()->has('delete_invoice'))
        <script>
            window.onload = function() {
                notif({
                    msg: "Facture supprimée avec succés.",
                    type: "success"
                })
            }

        </script>
    @endif
    @if (session()->has('archive_invoice'))
        <script>
            window.onload = function() {
                notif({
                    msg: "Facture archivée avec succés.",
                    type: "success"
                })
            }

        </script>
    @endif

    @if (session()->has('Status_Update'))
        <script>
            window.onload = function() {
                notif({
                    msg: "Facture modifiée avec succés.",
                    type: "success"
                })
            }

        </script>
    @endif

    @if (session()->has('restore_invoice'))
        <script>
            window.onload = function() {
                notif({
                    msg: "Facture restorée avec succés",
                    type: "success"
                })
            }

        </script>
    @endif


    <!-- row -->
    <div class="row">
        <!--div-->
        <div class="col-xl-12">
            <div class="card mg-b-20">
                <div class="card-header pb-0">
                    <div class="row">
                        <div class="col-md-2">
                            <a href="{{ route('invoices.create') }}" class="modal-effect btn btn-sm btn-primary" style="color:white"><i
                                    class="fas fa-plus"></i>&nbsp;  Ajouter une facture</a>
                        </div>

                        <div class="col-md-10">
                            <label style="font-weight:bold;">Sociéte : &nbsp;</label>
                            <select class="form-control-sm select2-no-search" name="societe" id="societe" style="width:20%">
                                <option label="----      ALL      ----">
                                </option>
                                @foreach ($societes as $societe)
                                    <option value="{{ $societe->societe_name }}"> {{ $societe->societe_name }}</option>
                                @endforeach
                            </select>

                            <label style="font-weight:bold;">&nbsp;  &nbsp;  Date debut facture : &nbsp;</label>
                            <input id="min-date" class="form-control-sm fc-datepicker"  data-date-format="DD-MM-YYYY" placeholder="DD-MM-YYYY" maxlength="10" >
                            <label style="font-weight:bold;">&nbsp;  &nbsp;  Date fin facture : &nbsp;</label>
                            <input id="max-date" class="form-control-sm fc-datepicker"   data-date-format="yyyy-mm-dd" placeholder="DD-MM-YYYY" maxlength="10">



                        </div>

                    </div>
                </div>
                <div class="card-body">
                    <div class="table-responsive">
                        <table id="example" class="table key-buttons  text-md-nowrap" data-page-length='10' style="text-align: center">
                            <thead>
                            <tr>
                                <th  class="border-bottom-0">#</th>
                                <th class="border-bottom-0" style = "vertical-align:middle">N° facture</th>
                                <th class="border-bottom-0" style = "vertical-align:middle">Date facture</th>
                                <th class="border-bottom-0" style = "vertical-align:middle">Date paiement</th>
                                <th class="border-bottom-0" style = "vertical-align:middle">Societé</th>
                                <th class="border-bottom-0" style = "vertical-align:middle">Type de mission</th>
                                <th class="border-bottom-0" style = "vertical-align:middle">Client</th>
                                <th class="border-bottom-0" style = "vertical-align:middle">Montant HT</th>
                                <th class="border-bottom-0" style = "vertical-align:middle">Montant TTC</th>
                                <th class="border-bottom-0" style = "vertical-align:middle">Montant TTC 2</th>
                                <th class="border-bottom-0">
                                    <i class="fas fa-tasks" style="font-size:26px"></i>
                                </th>
                                <th class="border-bottom-0" style = "vertical-align:middle">Statut</th>
                            </tr>
                            </thead>
                            <tbody>
                            @php
                                $i = 0;
                            @endphp
                            @foreach ($invoices as $invoice)
                                @php
                                    $i++
                                @endphp
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
                                    <td>{{ $invoice->totalTTC }}</td>
                                    <td>{{ $invoice->totalTTC2 }}</td>
                                    <td>
                                        <div class="dropdown">
                                            <button aria-expanded="false" aria-haspopup="true"
                                                    class="btn ripple btn-primary btn-sm" data-toggle="dropdown"
                                                    type="button"><i class="fas fa-caret-down ml-1">Action</i></button>
                                            <div class="dropdown-menu tx-13">
                                                <a class="dropdown-item"
                                                   href="{{route('invoices.edit', $invoice)}}">
                                                    <i class="fas fa-edit" ></i>
                                                    Modifier la facture
                                                </a>
                                                @role('admin')
                                                <a class="dropdown-item"  href="#"
                                                   data-toggle="modal" data-target="#delete_invoice" data-invoice_id="{{ $invoice->id }}"
                                                   data-invoice_num="{{ $invoice->invoice_number }}"><i
                                                        class="text-danger fas fa-trash-alt"></i>&nbsp;&nbsp;Supprimer la facture</a>
                                                @endrole
                                                <a class="dropdown-item"
                                                   href="{{route('invoice.status_show', $invoice->id)}}"><i
                                                        class=" text-success fas fa-money-bill"></i>&nbsp;&nbsp;
                                                    Modifier le réglement</a>
                                                <a class="dropdown-item" href="#" data-invoice_id="{{ $invoice->id }}"
                                                   data-invoice_num="{{ $invoice->invoice_number }}"
                                                   data-toggle="modal" data-target="#Transfer_invoice"><i
                                                        class="text-warning fas fa-exchange-alt"></i>&nbsp;&nbsp;Archiver la facture</a>

                                                <a class="dropdown-item" href="print_invoice/{{ $invoice->id }}"><i
                                                        class="text-success fas fa-print"></i>&nbsp;&nbsp;
                                                    Imprimer la facture


                                                </a>
                                            </div>
                                        </div>

                                    </td>
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
                        </table>
                    </div>
                </div>
            </div>
        </div>




        <!--/div-->

        <!-- row closed -->
    </div>

    <!-- حذف الفاتورة -->
    <div class="modal fade" id="delete_invoice" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
         aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">Supprimer la facture </h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <form action="{{ route('invoices.destroy') }}" method="post">
                    @method('DELETE')
                    @csrf
                    <div class="modal-body">
                        Êtes vous sûrs de vouloire supprimer la facture : <span id="insertHere" style="font-weight: bold;"></span> ?
                        <input type="hidden" name="invoice_id" id="invoice_id" value="">
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Annuler</button>
                        <button type="submit"  class="btn btn-danger">Valider</button>
                    </div>
                </form>
            </div>
        </div>
    </div>


    <!-- ارشيف الفاتورة -->
    <div class="modal fade" id="Transfer_invoice" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
         aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">Archiver la facture</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <form action="{{ route('invoices.destroy') }}" method="post">
                    {{ method_field('delete') }}
                    {{ csrf_field() }}
                    <div class="modal-body">
                        Êtes vous sûrs de vouloir archiver la facture : <span id="insertHereAr" style="font-weight: bold;"></span>
                        <input type="hidden" name="invoice_id" id="invoice_id" value="">
                        <input type="hidden" name="id_page" id="id_page" value="2">

                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Annuler</button>
                        <button type="submit" class="btn btn-success">Valider</button>
                    </div>
                </form>
            </div>
        </div>
    </div>
    <!-- Container closed -->

    <!-- main-content closed -->

@endsection
@section('js')
    <!-- Internal Data tables -->
    <!-- Internal Data tables -->
    <script src="{{ URL::asset('assets/plugins/datatable/js/jquery.dataTables.min.js') }}"></script>
    <script src="{{ URL::asset('assets/plugins/datatable/js/dataTables.dataTables.min.js') }}"></script>
    <script src="{{ URL::asset('assets/plugins/datatable/js/dataTables.responsive.min.js') }}"></script>
    <script src="{{ URL::asset('assets/plugins/datatable/js/responsive.dataTables.min.js') }}"></script>
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
    <!--Internal  Notify js -->
    <script src="{{ URL::asset('assets/plugins/notify/js/notifIt.js') }}"></script>
    <script src="{{ URL::asset('assets/plugins/notify/js/notifit-custom.js') }}"></script>
    <!--Internal  Datepicker js -->
    <script src="{{ URL::asset('assets/plugins/jquery-ui/ui/widgets/datepicker.js') }}"></script>
    <script src="{{URL::asset('assets/plugins/jquery-ui/ui/i18n/datepicker-fr.js')}}" charset="UTF-8"></script>

    <script>
        var date = $('.fc-datepicker').datepicker({
            dateFormat: 'dd-mm-yy',
        }).val();

    </script>
    <script>
        $('#delete_invoice').on('show.bs.modal', function(event) {
            var button = $(event.relatedTarget)
            var invoice_id = button.data('invoice_id')
            var invoice_num = button.data('invoice_num')
            var modal = $(this)
            modal.find('.modal-body #invoice_id').val(invoice_id);
            document.getElementById('insertHere').innerHTML = invoice_num;
        })

    </script>

    <script>
        $('#Transfer_invoice').on('show.bs.modal', function(event) {
            var button = $(event.relatedTarget)
            var invoice_id = button.data('invoice_id')
            var invoice_num = button.data('invoice_num')
            var modal = $(this)
            modal.find('.modal-body #invoice_id').val(invoice_id);
            document.getElementById('insertHereAr').innerHTML = invoice_num;
        })

    </script>
    <script>
        $(document).ready(function() {
            $('#societe').on('change', function() {
                updateTable();
            });

            $(function() {
                // var oTable = $('#example').DataTable();
                $("#min-date").datepicker();
                $("#max-date").datepicker();
                $('#min-date').change(function (e) {
                    updateTable();
                });
                $('#max-date').change(function (e) {
                    updateTable();
                });
            });
        });
    </script>
    <script>
        function updateTable(){
            // Call datatables, and return the API to the variable for use in our code
            // Binds datatables to all elements with a class of datatable
            let dt = $("#example").dataTable().api();
            dt.columns(4).search( $('#societe').val());
            $("#min-date").datepicker();
            $("#max-date").datepicker();
            // Extend dataTables search
            $.fn.dataTable.ext.search.push(
                function (settings, data, dataIndex) {
                    let min = $('#min-date').datepicker("getDate");
                    let max = $('#max-date').datepicker("getDate");
                    let invtDate = null;
                    if (data[2]){
                        let d = data[2].split("-");
                        invtDate = new Date(d[2] + '/' + d[1] + '/' + d[0]);
                    }
                    // console.log("DAKHALA  "+ invtDate);
                    if (min == null && max == null) { return true; }
                    if (min == null && invtDate <= max) { return true; }
                    if (max == null && invtDate >= min) { return true; }
                    if (invtDate <= max && invtDate >= min) { return true; }
                    return false;
                }
            );
            dt.draw();
        }
    </script>
@endsection

