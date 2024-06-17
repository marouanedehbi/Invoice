@extends('layouts.master')
@section('title')
    Liste des devis
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
                <h4 class="content-title mb-0 my-auto">Liste des devis</h4><span class="text-muted mt-1 tx-13 mr-2 mb-0"> </span>
            </div>
        </div>

    </div>
    <!-- breadcrumb -->
@endsection
@section('content')

    @if (session()->has('delete_estimate'))
        <script>
            window.onload = function() {
                notif({
                    msg: "Devis supprimé avec succés.",
                    type: "success"
                })
            }

        </script>
    @endif
    @if (session()->has('archive_estimate'))
        <script>
            window.onload = function() {
                notif({
                    msg: "Devis archivé avec succés.",
                    type: "success"
                })
            }

        </script>
    @endif

    @if (session()->has('Status_Update'))
        <script>
            window.onload = function() {
                notif({
                    msg: "Devis modifié avec succés.",
                    type: "success"
                })
            }

        </script>
    @endif

    @if (session()->has('restore_estimate'))
        <script>
            window.onload = function() {
                notif({
                    msg: "Devis restoré avec succés",
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
                            <a href="{{ route('estimates.create') }}" class="modal-effect btn btn-sm btn-primary" style="color:white"><i
                                    class="fas fa-plus"></i>&nbsp;  Ajouter un devis</a>
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
                                <th class="border-bottom-0" style = "vertical-align:middle">N° Devis</th>
                                <th class="border-bottom-0" style = "vertical-align:middle">Date devis</th>
                                <th class="border-bottom-0" style = "vertical-align:middle">Date prestation</th>
                                <th class="border-bottom-0" style = "vertical-align:middle">Societé</th>
                                <th class="border-bottom-0" style = "vertical-align:middle">Type de mission</th>
                                <th class="border-bottom-0" style = "vertical-align:middle">Client</th>
                                <th class="border-bottom-0" style = "vertical-align:middle">Montant HT</th>
                                <th class="border-bottom-0" style = "vertical-align:middle">Montant TVA</th>
                                <th class="border-bottom-0" style = "vertical-align:middle">Montant TTC</th>
                                <th class="border-bottom-0" style = "vertical-align:middle">Montant TTC 2</th>

                                <th class="border-bottom-0">
                                    <i class="fas fa-tasks" style="font-size:26px"></i>
                                </th>


                            </tr>
                            </thead>
                            <tbody>
                            @php
                                $i = 0;
                            @endphp
                            @foreach ($estimates as $estimate)
                                @php
                                    $i++
                                @endphp
                                <tr>
                                    <td>{{ $i }}</td>
                                    <td>
                                        <a
                                            href="{{ url('estimates_details') }}/{{ $estimate->id }}">{{ $estimate->estimate_number }}
                                        </a>
                                    </td>
                                    <td>
                                            <?= (isset($estimate->estimate_date) ? $newDate = date("d-m-Y", strtotime($estimate->estimate_date)) :""); ?></td>
                                    <td>
                                            <?= (isset($estimate->prestation_date) ? $newDate = date("d-m-Y", strtotime($estimate->prestation_date)) :""); ?></td>
                                    <td>{{ $estimate->societe->societe_name }}</td>
                                    <td>{{ $estimate->missionType->mission_type_name }}</td>
                                    <td>{{ $estimate->client_name }}</td>
                                    <td>{{ $estimate->totalHT }}</td>
                                    <td>{{ $estimate->montantTVA }}</td>
                                    <td>{{ $estimate->totalTTC }}</td>
                                    <td>{{ $estimate->totalTTC2 }}</td>

                                    <td>
                                        <div class="dropdown">
                                            <button aria-expanded="false" aria-haspopup="true"
                                                    class="btn ripple btn-primary btn-sm" data-toggle="dropdown"
                                                    type="button"><i class="fas fa-caret-down ml-1">Action</i></button>
                                            <div class="dropdown-menu tx-13">
                                                    <a class="dropdown-item"
                                                       href="{{route('estimate.edit', $estimate)}}">
                                                        <i class="fas fa-edit" ></i>
                                                        Modifier le devis
                                                    </a>
                                                @role('admin')
                                                    <a class="dropdown-item"  href="#"
                                                       data-toggle="modal" data-target="#delete_estimate" data-estimate_id="{{ $estimate->id }}"
                                                       data-estimate_num="{{ $estimate->estimate_number }}"><i
                                                            class="text-danger fas fa-trash-alt"></i>&nbsp;&nbsp;Supprimer le devis</a>
                                                @endrole

                                                    <a class="dropdown-item" href="#" data-estimate_id="{{ $estimate->id }}"
                                                       data-estimate_num="{{ $estimate->estimate_number }}"
                                                       data-toggle="modal" data-target="#Transfer_estimate"><i
                                                            class="text-warning fas fa-exchange-alt"></i>&nbsp;&nbsp;Archiver le devis</a>

                                                    <a class="dropdown-item" href="print_estimate/{{ $estimate->id }}"><i
                                                            class="text-success fas fa-print"></i>&nbsp;&nbsp;
                                                        Imprimer la devis


                                                    </a>
                                            </div>
                                        </div>

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
    <div class="modal fade" id="delete_estimate" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
         aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">Supprimer le devis </h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <form action="{{ route('estimates.destroy') }}" method="post">
                    @method('DELETE')
                    @csrf
                    <div class="modal-body">
                        Êtes vous sûrs de vouloire supprimer la facture : <span id="insertHere" style="font-weight: bold;"></span> ?
                        <input type="hidden" name="estimate_id" id="estimate_id" value="">
                        <input type="hidden" name="estimate_num" id="estimate_num" value="">
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
    <div class="modal fade" id="Transfer_estimate" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
         aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">Archiver la facture</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <form action="{{ route('estimates.destroy') }}" method="post">
                    {{ method_field('delete') }}
                    {{ csrf_field() }}
                    <div class="modal-body">
                        Êtes vous sûrs de vouloir archiver le devis : <span id="insertHereAr" style="font-weight: bold;"></span>
                        <input type="hidden" name="estimate_id" id="estimate_id" value="">
                        <input type="hidden" name="estimate_num" id="estimate_num" value="">
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
    <script src="{{ URL::asset('assets/plugins/jquery-ui/ui/widgets/datepicker.js') }}"></script>
    <script src="{{URL::asset('assets/plugins/jquery-ui/ui/i18n/datepicker-fr.js')}}" charset="UTF-8"></script>

    <script>
        var date = $('.fc-datepicker').datepicker({
            dateFormat: 'dd-mm-yy',
        }).val();

    </script>
    <script>
        $('#delete_estimate').on('show.bs.modal', function(event) {
            var button = $(event.relatedTarget)
            var estimate_id = button.data('estimate_id')
            var estimate_num = button.data('estimate_num')
            var modal = $(this)
            modal.find('.modal-body #estimate_id').val(estimate_id);
            document.getElementById('insertHere').innerHTML = estimate_num;

        })

    </script>

    <script>
        $('#Transfer_estimate').on('show.bs.modal', function(event) {
            var button = $(event.relatedTarget)
            var estimate_id = button.data('estimate_id')
            var estimate_num = button.data('estimate_num')
            var modal = $(this)
            modal.find('.modal-body #estimate_id').val(estimate_id);
            document.getElementById('insertHereAr').innerHTML = estimate_num;
        })

    </script>
    <script>
        $(document).ready(function() {
            $('#societe').on('change', function() {
                // Call datatables, and return the API to the variable for use in our code
                // Binds datatables to all elements with a class of datatable
                var dt = $("#example").dataTable().api();
                var societeName = $(this).val();
                //var filt = dt.search();
                dt.columns(4).search(societeName).draw();
            });
        });

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
                    let estDate = null;
                    if (data[2]){
                        let d = data[2].split("-");
                        estDate = new Date(d[2] + '/' + d[1] + '/' + d[0]);
                    }
                    if (min == null && max == null) { return true; }
                    if (min == null && estDate <= max) { return true; }
                    if (max == null && estDate >= min) { return true; }
                    if (estDate <= max && estDate >= min) { return true; }
                    return false;
                }
            );
            dt.draw();
        }
    </script>
@endsection
