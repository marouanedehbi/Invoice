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
    | Ajouter un devis
@stop

@section('page-header')
    <!-- breadcrumb -->
    <div class="breadcrumb-header justify-content-between">
        <div class="my-auto">
            <div class="d-flex">
                <h4 class="content-title mb-0 my-auto">Devis </h4> <span class="text-muted mt-1 tx-13 mr-2 mb-0">/
                     Ajouter un devis </span>
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

    <!-- row -->
    <div class="row">

        <div class="col-lg-12 col-md-12">
            <div class="card">
                <div class="card-body">
                    <form action="{{ route('estimates.store') }}" method="post" enctype="multipart/form-data"
                          autocomplete="off" id="formEstimate">

                        {{ csrf_field() }}
                        {{-- 1 --}}

                        <div class="row">
                            <div class="col"> <label for="select" class="control-label">Société * </label>

                                <select name="societe" id="societe" class="form-control SelectBox @error('societe') is-invalid @enderror" required>
                                    <!--placeholder-->
                                    <option value="" selected>---- Veuillez choisir une société ----</option>
                                    @foreach ($societes as $societe)
                                        <option value="{{ $societe->id }}"> {{ $societe->societe_name }}</option>
                                    @endforeach
                                </select>
                                @error('societe')
                                <div class="invalid-feedback">{{ $message }}</div>
                                @enderror

                            </div>
                            <div class="col">
                                <label for="text">Objet</label>
                                <input type="text" class="form-control" id="objet" name="objet" maxlength="100" value ="{{ old('objet') }}">
                            </div>

                            <div class="col">
                                @php
                                    $estdate = old('estimate_Date');
                                @endphp

                                <label>Date Devis * </label>
                                <input class="form-control fc-datepicker @error('estimate_Date') is-invalid @enderror" name="estimate_Date"
                                       placeholder="DD-MM-YYYY" id="estimate_Date"
                                       type="text" value="{{isset($estdate)  ? $estdate : date('d-m-Y') }}" required>
                                @error('estimate_Date')
                                    <div class="invalid-feedback">{{ $message }}</div>
                                @enderror
                            </div>

                            <div class="col">
                                <label>Date Prestation </label>
                                <input class="form-control fc-datepicker @error('Due_date') is-invalid @enderror" name="Due_date" placeholder="DD-MM-YYYY"
                                       type="text" id = "Due_date"  value="{{ old('Due_date') }}" >
                                @error('Due_date')
                                    <div class="invalid-feedback">{{ $message }}</div>
                                @enderror
                            </div>

                        </div>
                        <br>
                        {{-- 2 --}}
                        <div class="row">

                                <div class="col">
                                    <label for="select" class="control-label">Type de mission * </label>
                                    <select name="missionType" id="missionType" class="form-control SelectBox @error('missionType') is-invalid @enderror" required>
                                        <!--placeholder-->
                                        <option value="" selected>---- Veuillez choisir le type de mission ----</option>
                                    </select>
                                    @error('missionType')
                                    <div class="invalid-feedback">{{ $message }}</div>
                                    @enderror
                                </div>

                            <div class="col">
                                <label for="inputName" class="control-label">Nom du client</label>
                                <input class="form-control" name="ClientName" id ="ClientName"
                                       type="text" maxlength="100" value ="{{ old('ClientName') }}">
                            </div>

                            <div class="col">
                                <label for="inputName" class="control-label">ICE</label>
                                <input class="form-control" name="ICE" id ="ICE"
                                       type="text" maxlength="80" value ="{{ old('ICE') }}">
                            </div>

                            <div class="col">
                                <label for="inputName" class="control-label">Adresse</label>

                                <input  class="form-control"  name="ClientAdress" id ="ClientAdress"
                                        type="text" maxlength="200" value ="{{ old('ClientAdress') }}">
                            </div>
                        </div>
                        <br>
                        {{-- 3 --}}
                        <div class="row">

                            <div class="col">
                                <label for="exampleTextarea">Détail de la mission *</label>
                                <textarea class="form-control @error('detail') is-invalid @enderror" id="detail" name="detail" rows="2"
                                required>{{ old('detail') }}</textarea>
                                @error('detail')
                                <div class="invalid-feedback">{{ $message }}</div>
                                @enderror
                            </div>
                        </div>
                        <br>
                        @php
                            $av= old('avance');
                            $rem =  old('remise');
                            $com = old('commission');
                        @endphp
                        {{-- 4 --}}
                        <div class="row">
                            <div class="col">
                                <label for="inputName" class="control-label" >Avance (MAD)</label>
                                <input type="text" class="form-control" style="text-align:right;" name="avance"  id ="avance" onkeyup="myFunction3()"
                                       oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');" value="{{ isset ($av) ? $av : 0 }}">
                            </div>
                            <div class="col">
                                <label for="inputName" class="control-label" >Remise (%)</label>
                                <input type="text" class="form-control" style="text-align:right;" name="remise" id ="remise"  onkeyup="myFunction3()"
                                       oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');" value="{{ isset ($rem) ? $rem : 0 }}"  maxlength="5">
                            </div>

                            <div class="col">
                                <label for="inputName" class="control-label">Commission (MAD)</label>
                                <input type="text" class="form-control" style="text-align:right;" name="commission" id ="commission"
                                       oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');" value={{ isset ($com) ? $com : 0 }}>
                            </div>
                            <div class="col">

                                    <label class="control-label">Mode de paiement * </label>

                                <select name="Mode_Pay" id="Mode_Pay" class="form-control SelectBox" onchange="myFunction()">
                                    <!--placeholder-->
                                    <option value="Chèque" selected>Chèque</option>
                                    <option value="Virement">Virement</option>
                                    <option value="Espèce">Espèce</option>

                                </select>
                            </div>
                        </div>

                        <br>

                        {{-- 5 --}}
                        <div class="row">
                            <div class="col-xl-2">
                                <a class="modal-effect btn btn-sm btn-primary"  style="color:white"
                                   data-toggle="modal" href="#modalPres"><i
                                        class="fas fa-plus"></i>Ajouter des prestations *</a>

                            </div>

                            <div class="col-xl-10">
                                <div class="table-responsive @error('arrayPrestation') is-invalid @enderror">
                                    <table id="example11" class="table table-bordered mg-b-0 text-md-nowrap " >
                                        <thead>
                                        <tr>
                                            <th   style="text-align:center; vertical-align:middle; @error('arrayPrestation') color:#ee335e; @enderror ">Description</th>
                                            <th  style="text-align:center; vertical-align:middle; @error('arrayPrestation') color:#ee335e; @enderror ">Quantite</th>
                                            <th  style="text-align:center; vertical-align:middle; @error('arrayPrestation') color:#ee335e; @enderror ">Montant</th>
                                            <th  style="text-align:center; vertical-align:middle; @error('arrayPrestation') color:#ee335e; @enderror ">TVA</th>
                                            <th  style="text-align:center; vertical-align:middle; @error('arrayPrestation') color:#ee335e; @enderror ">Action</th>

                                        </tr>
                                        </thead>
                                        <tbody>
                                        </tbody>
                                    </table>
                                    @error('arrayPrestation')
                                    <div style = "color: #ee335e; font-size: 80%;">{{ $message }}</div>
                                    @enderror
                                    <div> <input type="hidden" name="arrayPrestation" id="arrayPrestation"  >
                                    </div>
                                </div>
                            </div>
                        </div>
                        <br>
                        {{-- 6 --}}
                        <div class="row">
                            <div class="col-xl-2">
                                <a class="modal-effect btn btn-sm btn-primary"  style="color:white"
                                   data-toggle="modal" href="#modalFees"><i
                                        class="fas fa-plus"></i>Ajouter des frais</a>
                            </div>

                            <div class="col-xl-10">
                                <div class="table-responsive">
                                    <table id="example10" class="table table-bordered mg-b-0 text-md-nowrap" >
                                        <thead>
                                        <tr>
                                            <th style="text-align:center; vertical-align:middle">Description</th>
                                            <th style="text-align:center; vertical-align:middle">Montant</th>
                                            <th style="text-align:center; vertical-align:middle">Action</th>
                                        </tr>
                                        </thead>
                                        <tbody>
                                        </tbody>
                                    </table>
                                    <div> <input type="hidden" name="arrayFees" id="arrayFees"  >
                                    </div>
                                </div>
                            </div>
                        </div>
                        <br>
                            {{-- 7 --}}

                            <div class="row">
                                <div class="col">
                                    <label for="inputName" class="control-label">Reliquat à prevoir (MAD)</label>
                                    <input type="text" class="form-control" style="text-align:right;" id="Reliquat" name="Reliquat" value="0.00" readonly>
                                </div>


                                <div class="col">
                                    <label for="inputName" class="control-label">Montant HT (MAD)</label>
                                    <input type="text" class="form-control" style="text-align:right;" id="montantHT" name="montantHT" value="0.00"  readonly>
                                </div>

                                <div class="col">
                                    <label for="inputName" class="control-label">Montant Total TTC (MAD)</label>
                                    <input type="text" class="form-control" style="text-align:right;" id="TotalTTC" name="TotalTTC" value="0.00"  readonly>

                                </div>
                                <div class="col">
                                    <label for="inputName" class="control-label">Montant Total TTC 2 (MAD)</label>
                                    <input type="text" class="form-control" style="text-align:right;" id="TotalTTC2" name="TotalTTC2" value="0.00"  readonly>

                                </div>


                            </div>
                            <br>
                            <div class="row">
                                <div class="col">
                                    <div class="d-flex justify-content-center">
                                        <button type="submit" id="submittedData" class="btn btn-primary"  onclick="storeDataAndSubmit();return false;">Valider </button>
                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

                                    </div>
                                </div>

                            </div>
                            <div>
                                <input type="hidden" name="montantHTRem" id="montantHTRem"  >
                                <input type="hidden" name="montantTVA" id="montantTVA"  >
                            </div>
                    </form>
                </div>

        </div>
        <!-- row closed -->
    </div>

        <!-- add modal prestation -->
        <div class="modal fade" id="modalPres" tabindex="-1" role="dialog" aria-labelledby="exampleModalPres"  aria-hidden="true">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="exampleModalLabel">Ajouter une prestation </h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>

                    </div>


                    <form class="w3-container">
                        {{ csrf_field() }}
                        <div class="modal-body">
                            <div class="form-group">
                                <label for="">Description</label>
                                <textarea type="text" class="form-control" id="desc_prestation" name="desc_prestation" required></textarea>
                            </div>
                            <div class="form-group">
                                <label class="">Quantité</label>
                                <input type="text" class="form-control" id="quantite_pres" name="quantite_pres"  oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');" required>
                            </div>
                            <div class="form-group">
                                <label class="my-1 mr-2" for="">Montant</label>

                                <input type="text" class="form-control" id="amount_pres" name="amount_pres"
                                       oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');" required>
                            </div>

                            <label for="inputName" class="control-label">TVA</label>
                            <select name="Rate_VAT" id="Rate_VAT" class="form-control SlectBox" required>
                                <!--placeholder-->
                                <option value="1">5%</option>
                                <option value="2">10%</option>
                                <option value="3">15%</option>
                                <option value="4" selected>20%</option>
                                <option value="5">30%</option>

                            </select>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-success" id="save">Valider</button>
                                <button type="button" class="btn btn-secondary" data-dismiss="modal">Annuler</button>
                            </div>
                        </div>
                    </form>
                </div>

            </div>
        </div>
        <!-- add modal fees-->

        <div class="modal fade" id="modalFees" tabindex="-1" role="dialog" aria-labelledby="exampleModalFees"  aria-hidden="true">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="exampleModalLabel">Ajouter des frais </h5>
                        <button type="button"  class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <form class="w3-container">
                        {{ csrf_field() }}
                        <div class="modal-body">
                            <div class="form-group">
                                <label for="">Description</label>
                                <textarea type="text" class="form-control" id="desc_fees" name="desc_fees" ></textarea>
                            </div>

                            <div class="form-group">
                                <label class="my-1 mr-2" for="">Montant</label>

                                <input type="text" class="form-control" id="amount_fees" name="amount_fees"
                                       oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');">
                            </div>

                            <div class="modal-footer">
                                <button type="button" class="btn btn-success" id="saveFees">Valider
                                </button>
                                <button type="button" class="btn btn-secondary" data-dismiss="modal">Annuler</button>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
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
    <script src="{{URL::asset('assets/plugins/jquery-ui/ui/i18n/datepicker-fr.js')}}" charset="UTF-8"></script>
    <!-- Internal Select2 js-->
    <script src="{{ URL::asset('assets/plugins/select2/js/select2.min.js') }}"></script>
    <!-- Internal Modal js-->
    <script src="{{ URL::asset('assets/js/modal.js') }}"></script>




    <script>
        var date = $('.fc-datepicker').datepicker({
            dateFormat: 'dd-mm-yy'
        }).val();

    </script>

    <script>
        $('#saveFees').on('click', function() {
            var desc=$('#desc_fees').val();
            var amount=$('#amount_fees').val();
            if ( (desc)  && (amount))
                $('#example10 tbody').append('<tr class="child"><td class="desc"> <pre>'+desc+'</pre></td><td class="amount" style="text-align:center; vertical-align:middle">'+amount+'</td><td style="text-align:center; vertical-align:middle"> <a href="javascript:void(1);" class="remCF2  fa fa-trash" style="font-size:12px;color:red;"  ></a></td></tr> ');
            $('#modalFees').modal('hide');
            myFunction3();
        });

        $('#save').on('click', function() {
            var desc=$('#desc_prestation').val();
            var quantite=$('#quantite_pres').val();
            //$('#quantite_pres').val()
            var amount=$('#amount_pres').val();
            var VAT=$( "#Rate_VAT option:selected" ).text();
            if ( (desc) && (quantite) && (amount) && (VAT))
                $('#example11 tbody').append('<tr class="child"><td  class="desc"> <pre>'+desc+'</pre></td><td class="quantite" style="text-align:center; vertical-align:middle">'+quantite+'</td><td class="amount" style="text-align:center; vertical-align:middle">'+amount+'</td><td class="VAT"  style="text-align:center; vertical-align:middle">'+VAT+'</td><td style="text-align:center; vertical-align:middle"> <a href="javascript:void(0);" class="remCF1  fa fa-trash" style="font-size:12px;color:red;"></a></td></tr> ');
            $('#modalPres').modal('hide');
            myFunction3();
            //   </td><td><button "javascript:void(0);" class="remCF1 btn btn-small btn-danger">Remove</button></td></tr>');
        });
        $(document).on('click','.remCF1',function(){
            $(this).parent().parent().remove();
            $('#example11 tbody tr').each(function(i){
              //  $($(this).find('td')[0]).html(i+1);

            });
            myFunction3();
        });

        $(document).on('click','.remCF2',function(){
            $(this).parent().parent().remove();
            $('#example10 tbody tr').each(function(i){
                //$($(this).find('td')[0]).html(i+1);
            });
            myFunction3();
        });

        $('#modalFees').on('hidden.bs.modal', function () {
            $(this).find('form').trigger('reset');
        });

        $('#modalPres').on('hidden.bs.modal', function () {
            $(this).find('form').trigger('reset');
        });
    </script>

    <script>
        function myFunction2() {
        //    var res = "";
            var  valHT = 0;
            var  valTTC = 0;
            var mntTVA = 0;
            var rem = parseFloat(document.getElementById("remise").value);

             $('#example11').find("tbody").find("tr").each(function(){
                var quantite= $(this).find(".quantite").text();
                var amount= $(this).find(".amount").text();
                var VAT= $(this).find(".VAT").text();
                var qntt = parseFloat(quantite).toFixed(2);
                var amt = parseFloat(amount).toFixed(2);
                 valHT += parseFloat(qntt * amt);

                 // var vatf =  parseFloat(1 + VAT.slice(0, 2)).toFixed(2) / 100;
                 var vatf =  parseFloat(VAT.slice(0, 2)).toFixed(2) / 100;
                  // var valTVA = parseFloat(qntt * amt * vatf);// .toFixed(2);

                 if ((rem) && (rem > 0) ){
                     mntTVA += parseFloat(((qntt * amt) - ( qntt * amt * rem / 100)) * vatf );
                 }else
                     mntTVA += parseFloat(qntt * amt * vatf);

                 // valTTC +=  parseFloat(qntt * amt * vatf);
            });
            // alert (mntTVA);
            document.getElementById("montantHT").value = parseFloat(valHT).toFixed(2);
            document.getElementById("montantTVA").value = parseFloat(mntTVA).toFixed(2);


            var totalHTRem = 0;
            if ((rem) && (rem > 0) ){
                totalHTRem = parseFloat(valHT * ( 1 - (rem / 100)) );
                valTTC =  parseFloat(totalHTRem + mntTVA);
            }else
                valTTC =  parseFloat(valHT + mntTVA);

            document.getElementById("montantHTRem").value = parseFloat(totalHTRem).toFixed(2);
            document.getElementById("TotalTTC").value = parseFloat(valTTC).toFixed(2);
           // alert (res);
           // console.log(res);
        }

        function myFunction3() {
            //    var res = "";
            myFunction2();
           var  vafrais =  parseFloat(document.getElementById("TotalTTC").value);
            $('#example10').find("tbody").find("tr").each(function(){
                var amount= $(this).find(".amount").text();
                vafrais +=  parseFloat(amount);
            });
            document.getElementById("TotalTTC2").value = parseFloat(vafrais).toFixed(2);

            var valTTC2 = parseFloat(document.getElementById("TotalTTC2").value );
            var avc = parseFloat(document.getElementById("avance").value);
            var rlq  = 0;
            document.getElementById("Reliquat").value = parseFloat(valTTC2).toFixed(2);
            if ((avc) && (avc >= 0) ){
                rlq  = parseFloat(valTTC2 - avc);
                document.getElementById("Reliquat").value = parseFloat(rlq).toFixed(2);
            }
        }
    </script>

    <script type="text/javascript">
        function  storeTblPresValues() {
            var header = [];
            var rows = [];
            $("#example11 tr th").each(function (i, th) {
                header.push($(th).html());
            });
            $("#example11 tr:has(td)").each(function (i, tr) {
                var row = {};
                $(tr).find('td').each(function (j, td) {
                    row[header[j]] = $(td).html();
                });
                rows.push(row);
            });

            return rows;
        }


        function  storeTblValues()
        {
            var TableDataPres = [];
            $('#example11 tr').each(function(row, tr){
                TableDataPres[row]={
                    "Description" : $(tr).find('td:eq(0)').text()
                    , "Quantite" : $(tr).find('td:eq(1)').text()
                    , "Montant" :$(tr).find('td:eq(2)').text()
                    , "TVA" : $(tr).find('td:eq(3)').text()
                }
            });
            TableDataPres.shift();  // first row will be empty - so remove
            return TableDataPres;
        }

        function  storeTblFeesValues()
        {
            var TableDataFees = [];
            $('#example10 tr').each(function(row, tr){
                TableDataFees[row]={
                    "Description" : $(tr).find('td:eq(0)').text()
                    , "Montant" :$(tr).find('td:eq(1)').text()
                }
            });
            TableDataFees.shift();  // first row will be empty - so remove
            return TableDataFees;
        }
        function storeDataAndSubmit(){
            // $("#formInvoice").on('submit', function(event) {
         //   $("#formInvoice").submit.function() {(
             //   event.preventDefault();
                var tableDataPres;

                tableDataPres =JSON.stringify(storeTblValues()); // $.toJSON(storeTblValues());
                document.getElementById("arrayPrestation").value = tableDataPres;

                var tableDataFees;
                tableDataFees =JSON.stringify(storeTblFeesValues());
                document.getElementById("arrayFees").value = tableDataFees;
                // on envoie le formulaire
                document.getElementById("formEstimate").submit();

        }
    </script>

    <script>
        $(document).ready(function() {
            $('select[name="societe"]').on('change', function() {
                var societeId = $(this).val();
                $('select[name="missionType"]').empty();
                $('select[name="missionType"]').append('<option value="">'
                    + "---- Veuillez choisir le type de mission ----" + '</option>');
                if (societeId) {
                    $.ajax({
                        url: "{{ URL::to('missionTypesBySociete') }}/" + societeId,
                        type: "GET",
                        dataType: "json",
                        success: function(data) {
                            // console.log(data);
                            $.each(data, function(key, value) {
                                //  console.log(key);
                                // console.log(value.id);
                                // console.log(value.mission_type_name);
                                $('select[name="missionType"]').append('<option value="' +
                                    value.id + '">' + value.mission_type_name + '</option>');
                            });
                        },
                    });

                } else {
                    console.log('AJAX load did not work');
                }
            });

        });
    </script>
@endsection
