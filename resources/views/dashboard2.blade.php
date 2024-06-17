@extends('layouts.master')
@section('css')
<!--  Owl-carousel css-->
<link href="{{URL::asset('assets/plugins/owl-carousel/owl.carousel.css')}}" rel="stylesheet" />
<!-- Maps css -->
<link href="{{URL::asset('assets/plugins/jqvmap/jqvmap.min.css')}}" rel="stylesheet">
<link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/npm/daterangepicker/daterangepicker.css" />
<style>
    .wrapper {
        width: 40%;
        margin: 0 auto;
    }
</style>
@endsection
@section('page-header')
                <!-- breadcrumb -->
                <div class="breadcrumb-header justify-content-between">
                    <div class="left-content">
                        <div>
                          <h2 class="main-content-title tx-24 mg-b-1 mg-b-lg-1">
                              Bonjour, et heureux de vous retrouver!</h2>
                          <p class="mg-b-0">Tableau de bord.</p>
                        </div>
                    </div>
                    <div class="justify-content-center;">
                        <div id="reportrange" style="background: #fff; cursor: pointer; padding: 5px 10px; border: 1px solid #ccc; width: 100%">
                            <i class="fa fa-calendar"></i>&nbsp;Periode :
                            <span></span> <i class="fa fa-caret-down"></i>
                        </div>
                    </div>
                </div>
                <!-- /breadcrumb -->
@endsection
@section('content')
                <!-- row -->

                <div class="row row-sm">
                    <div class="col-xl-3 col-lg-6 col-md-6 col-xm-12">
                        <div class="card overflow-hidden sales-card bg-primary-gradient">
                            <div class="pl-3 pt-3 pr-3 pb-2 pt-0">
                                <div class="">
                                    <h6 class="mb-3 tx-12 text-white">TOUTES LES FACTURES</h6>
                                </div>
                                <div class="pb-0 mt-0">
                                    <div class="d-flex">
                                        <div class="">
                                            <h3 class="tx-20 font-weight-bold mb-1 text-white">
                                                {{number_format(\App\Models\invoices::sum('totalTTC2'),2,'.',' ')}} MAD
                                            </h3>
                                            <p class="mb-0 tx-13 text-white op-7">Total facture : {{\App\Models\invoices::count()}} </p>

                                        </div>

                                        <span class="float-right my-auto mr-auto">
                                             &nbsp; &nbsp; &nbsp; &nbsp;
                                            <i class="fas fa-arrow-circle-up text-white" ></i>
                                            <span class="text-white op-7">100%</span>
                                        </span>

                                    </div>
                                </div>
                            </div>
                            <span id="compositeline" class="pt-1">5,9,5,6,4,12,18,14,10,15,12,5,8,5,12,5,12,10,16,12</span>
                        </div>
                    </div>
                    <div class="col-xl-3 col-lg-6 col-md-6 col-xm-12">
                        <div class="card overflow-hidden sales-card bg-danger-gradient">
                            <div class="pl-3 pt-3 pr-3 pb-2 pt-0">
                                <div class="">
                                    <h6 class="mb-3 tx-12 text-white">FACTURE NON PAYEE</h6>
                                </div>
                                <div class="pb-0 mt-0">
                                    <div class="d-flex">
                                        <div class="">
                                            <h3 class="tx-20 font-weight-bold mb-1 text-white">
                                                {{number_format(\App\Models\invoices::where('value_status', 1)->sum('totalTTC2'),2,'.',' ')}} MAD</h3>
                                            <p class="mb-0 tx-12 text-white op-7">Total facture : {{\App\Models\invoices::where('value_status', 1)->count()}}</p>
                                        </div>
                                        <span class="float-right my-auto mr-auto">
                                             &nbsp; &nbsp; &nbsp; &nbsp;
                                            <i class="fas fa-arrow-circle-down text-white"></i>
                                            <span class="text-white op-7">
                                                @php
                                                   $invCount =  \App\Models\invoices::count();
                                                   ($invCount > 0 ?  : $invCount = 100);
                                                @endphp
                                                {{round(\App\Models\invoices::where('value_status', 1)->count() / $invCount * 100)}}%</span>
                                        </span>
                                    </div>
                                </div>
                            </div>
                            <span id="compositeline2" class="pt-1">3,2,4,6,12,14,8,7,14,16,12,7,8,4,3,2,2,5,6,7</span>
                        </div>
                    </div>
                    <div class="col-xl-3 col-lg-6 col-md-6 col-xm-12">
                        <div class="card overflow-hidden sales-card bg-success-gradient">
                            <div class="pl-3 pt-3 pr-3 pb-2 pt-0">
                                <div class="">
                                    <h6 class="mb-3 tx-12 text-white">FACTURE PAYEE</h6>
                                </div>
                                <div class="pb-0 mt-0">
                                    <div class="d-flex">
                                        <div class="">
                                            <h4 class="tx-20 font-weight-bold mb-1 text-white">
                                                {{number_format(\App\Models\invoices::where('value_status', 3)->sum('totalTTC2'),2,'.',' ')}} MAD
                                            </h4>
                                            <p class="mb-0 tx-12 text-white op-7">Total facture : {{\App\Models\invoices::where('value_status', 3)->count()}}</p>
                                        </div>
                                        <span class="float-right my-auto mr-auto">
                                               &nbsp; &nbsp; &nbsp; &nbsp;
                                            <i class="fas fa-arrow-circle-up text-white"></i>
                                             @php
                                                 $invCount =  \App\Models\invoices::count();
                                                 ($invCount > 0 ?  : $invCount = 100);
                                             @endphp
                                            <span class="text-white op-7">  {{round(\App\Models\invoices::where('value_status', 3)->count() / $invCount * 100)}}%</span>
                                        </span>
                                    </div>
                                </div>
                            </div>
                            <span id="compositeline3" class="pt-1">5,10,5,20,22,12,15,18,20,15,8,12,22,5,10,12,22,15,16,10</span>
                        </div>
                    </div>
                    <div class="col-xl-3 col-lg-6 col-md-6 col-xm-12">
                        <div class="card overflow-hidden sales-card bg-warning-gradient">
                            <div class="pl-3 pt-3 pr-3 pb-2 pt-0">
                                <div class="">
                                    <h6 class="mb-3 tx-12 text-white">FACTURE PARTIELLEMENT PAYEES</h6>
                                </div>
                                <div class="pb-0 mt-0">
                                    <div class="d-flex">
                                        <div class="">
                                            <h4 class="tx-20 font-weight-bold mb-1 text-white">
                                                {{number_format(\App\Models\invoices::where('value_status', 2)->sum('totalTTC2'),2,'.',' ')}} MAD

                                            </h4>
                                            <p class="mb-0 tx-12 text-white op-7">
                                                Total facture : {{\App\Models\invoices::where('value_status', 2)->count()}}
                                            </p>
                                        </div>
                                        <span class="float-right my-auto mr-auto">
                                             &nbsp; &nbsp; &nbsp; &nbsp;
                                            <i class="fas fa-arrow-circle-down text-white"></i>
                                             @php
                                                 $invCount =  \App\Models\invoices::count();
                                                 ($invCount > 0 ?  : $invCount = 100);
                                             @endphp
                                            <span class="text-white op-7"> {{round(\App\Models\invoices::where('value_status', 2)->count() / $invCount * 100)}}%</span>
                                        </span>
                                    </div>
                                </div>
                            </div>
                            <span id="compositeline4" class="pt-1">5,9,5,6,4,12,18,14,10,15,12,5,8,5,12,5,12,10,16,12</span>
                        </div>
                    </div>
                </div>

                <!-- row closed -->

                <!-- row opened -->
                <div class="row row-sm">
                    <div class="col-md-12 col-lg-12 col-xl-6">
                        <div class="card">
                            <div class="card-header bg-transparent pd-b-0 pd-t-20 bd-b-0">
                                <div class="d-flex justify-content-between">
                                    <h4 class="card-title mb-0">Chiffre d'affaire facturée vs Société</h4>
                                    <i class="mdi mdi-dots-horizontal text-gray"></i>
                                </div>
                                <p class="tx-12 text-muted mb-0">Chiffre d'affaire facturée.</p>
                            </div>

                                <div class="wrapper" >
                                    <canvas id="chartCAFact"></canvas>
                                </div>

                            <p class="tx-14 mb-0" style ="margin-left: 120px;"> - &nbsp;CA  Global &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :
                                {{  number_format(($datas['dataCAFact'][0] + $datas['dataCAFact'][1]),2,'.',' ') }} MAD.</p>
                            <p class="tx-14 mb-0" style ="margin-left: 120px;"> - &nbsp;CA Aby Finance &nbsp; :
                                {{ number_format($datas['dataCAFact'][0],2,'.',' ') }} MAD.</p>
                            <p class="tx-14 mb-0" style ="margin-left: 120px;"> - &nbsp;CA Sagi Dev &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;:
                                {{ number_format($datas['dataCAFact'][1],2,'.',' ') }} MAD.</p>
                        </div>

                    </div>

                    <div class="col-md-12 col-lg-12 col-xl-6">
                        <div class="card">
                            <div class="card-header bg-transparent pd-b-0 pd-t-20 bd-b-0">
                                <div class="d-flex justify-content-between">
                                    <h4 class="card-title mb-0">Chiffre d'affaire encaisée vs Société</h4>
                                    <i class="mdi mdi-dots-horizontal text-gray"></i>
                                </div>
                                <p class="tx-12 text-muted mb-0">Chiffre d'affaire encaisée.</p>
                            </div>

                            <div class="wrapper" >
                                <canvas id="chartCAEnc"></canvas>
                            </div>

                            <p class="tx-14 mb-0" style ="margin-left: 120px;"> - &nbsp;CA  Global &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :
                                {{  number_format(($datas['dataCAEnc'][0] + $datas['dataCAEnc'][1]),2,'.',' ') }} MAD.</p>
                            <p class="tx-14 mb-0" style ="margin-left: 120px;"> - &nbsp;CA Aby Finance &nbsp; :
                                {{ number_format($datas['dataCAEnc'][0],2,'.',' ') }} MAD.</p>
                            <p class="tx-14 mb-0" style ="margin-left: 120px;"> - &nbsp;CA Sagi Dev &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;:
                                {{ number_format($datas['dataCAEnc'][1],2,'.',' ') }} MAD.</p>
                        </div>


                    </div>
                </div>


                <div class="row row-sm">

                    <div class="col-md-12 col-lg-12 col-xl-12">
                        <div class="card">
                            <div class="card-header bg-transparent pd-b-0 pd-t-20 bd-b-0">
                                <div class="d-flex justify-content-between">
                                    <h4 class="card-title mb-0">Statut des factures  vs Société</h4>
                                    <i class="mdi mdi-dots-horizontal text-gray"></i>
                                </div>
                                <p class="tx-12 text-muted mb-0">Statut des factures.</p>

                            </div>
                            <div class="justify-content: center;" style="width:99%;height:300px;margin-left: 350px; margin-right: auto;">

                                <canvas  id="chartFact"></canvas>
                            </div>

                        </div>
                    </div>

                </div>
                <!-- row closed -->

                <!-- row opened -->

                <!-- row close -->

                <!-- row opened -->

                <!-- /row -->



        </div>
        <!-- Container closed -->
@endsection
@section('js')
<!--Internal  Chart.bundle js
<script src="{{URL::asset('assets/plugins/chart.js/chartjs-plugin-piechart-outlabels.js')}}"></script>
-->
<!--Internal Apexchart js-->
<script src="{{URL::asset('assets/js/apexcharts.js')}}"></script>
<!-- Internal Map -->
<!--Internal  index js -->
<script src="{{URL::asset('assets/js/index.js')}}"></script>
<script src="{{URL::asset('assets/js/jquery.vmap.sampledata.js')}}"></script>

<script src="{{URL::asset('assets/plugins/chart.js/chart.js')}}"></script>
<script src="{{URL::asset('assets/plugins/chart.js/chartjs-plugin-datalabels.min.js')}}"></script>
<script src="{{URL::asset('assets/plugins/chart.js/chartjs-plugin-labels.min.js')}}"></script>


<script>
    // Manually register the chartjs datalabels plugin
    // Chart.register(ChartDataLabels);
    const ctx = document.getElementById('chartFact');
    new Chart(ctx, {
        type: 'bar',
        data: {
            labels: ['Aby Finance', 'Sagi dev'],
            datasets: [{
                label: `Facture payées`,
                data: @json($datas['dataFactPay']),
                borderWidth: 3,
                backgroundColor: ['rgba(15, 147, 54, 0.8)', 'rgba(15, 147, 54, 0.8)'],
              //  borderColor: 'blue',
            },{
                label: `Facture partiellement payées`,
                data:  @json($datas['dataFactPP']),
                borderWidth: 3,
                backgroundColor: ['rgba(213, 120, 7, 0.8)', 'rgba(213, 120, 7, 0.8)'],
               // borderColor: 'blue'
                },
                {
                label: `Facture non payées`,
                    data: @json($datas['dataFactNP']),
                    borderWidth: 3,
                    backgroundColor: ['rgba(242, 43, 80, 0.85)', 'rgba(242, 43, 80, 0.85)'],
                //    borderColor: 'blue'
                },
            ]
        },
        options: {

            plugins: {
                title: {
                    display: false,
                    text: 'Etat des factures vs Société',
                    color: 'rgba(44, 57, 48, 0.9)',
                    font: {
                        weight: 'bold',
                        size: 15
                    },
                    // add padding when position is `outside`
                    // default is 2
                    outsidePadding: 0,
                    // add margin of text when position is `outside` or `border`
                    // default is 2
                    textMargin: 0
                },
                datalabels: {
                    // Position of the labels
                    // (start, end, center, etc.)
                    anchor: 'end',
                    // Alignment of the labels
                    // (start, end, center, etc.)
                    align: 'center',
                    // Color of the labels
                    color: 'black',
                    font: {
                        weight: 'bold',
                    },
                    formatter: function (value, context) {
                        // Display the actual data value
                        return value;
                    }
                }
            },
        },
        plugins : [ChartDataLabels]
    });



</script>

<script>
    const ctxp = document.getElementById('chartCAFact');
    new Chart(ctxp, {
        type: 'pie',
        data: {
            labels: ['Aby Finance', 'Sagi dev'],
            datasets: [{
                data: @json($datas['dataCAFact']),
                borderWidth: 1,
                backgroundColor: ['rgba(76, 50, 116, 0.98)',
                    'rgba(213, 120, 7, 0.8)',],
                //  borderColor: 'blue',
            },
            ]
        },
        options: {
            plugins: {
                legend: {
                    display: true,
                    position: "top",
                    align: "center",
                },

             /*   datalabels: {

                    // Position of the labels
                    // (start, end, center, etc.)
                    anchor: 'end',
                    // Alignment of the labels
                    // (start, end, center, etc.)
                    align: 'end',
                    // Color of the labels
                    color: 'black',
                    font: {
                        weight: 'bold',
                    },
                    formatter: function (value, context) {
                        // Display the actual data value
                        return value.replace(/\B(?=(?:\d{3})+(?!\d))/g, ' ') +
                        " MAD";
                       // return (value / 1000 * 100).toFixed(2) + "%";
                        // return value;
                    }
                }*/
            },

        },
       // plugins : [ChartDataLabels]
    });


</script>

<script>
    const ctxe = document.getElementById('chartCAEnc');
    new Chart(ctxe, {
        type: 'pie',
        data: {
            labels: ['Aby Finance', 'Sagi dev'],
            datasets: [{
                data: @json($datas['dataCAEnc']),
                borderWidth: 1,
                backgroundColor: ['rgba(76, 50, 116, 0.98)',
                    'rgba(213, 120, 7, 0.8)',],
            },
            ]
        },
        options: {
            plugins: {
                legend: {
                    display: true,
                    position: "top",
                    align: "center",
                },
            },

        },
    });
</script>
<script type="text/javascript">
    $(function() {

        $('input[name="datefilter"]').daterangepicker({
            autoUpdateInput: false,
            locale: {
                cancelLabel: 'Clear'
            }
        });

        $('input[name="datefilter"]').on('apply.daterangepicker', function(ev, picker) {
            $(this).val(picker.startDate.format('MM/DD/YYYY') + ' - ' + picker.endDate.format('MM/DD/YYYY'));
        });

        $('input[name="datefilter"]').on('cancel.daterangepicker', function(ev, picker) {
            $(this).val('');
        });

    });
    </script>

<script type="text/javascript">
    moment.locale('fr');
    $(function() {

                var start = null; //    moment().subtract(29, 'days');
                var end =  null; // moment();
                $('#reportrange span').html("ALL");
                // alert("coucou")
            function cb(start, end) {
              // alert(start);
                     if (isNaN(start) && isNaN(end)){
                         $('#reportrange span').html("ALL");
                         dateStart = moment().subtract(29, 'days');
                       //  previousEnd =   null;
                       //  var previousEnd = moment(dateStart).subtract(1,'day').format('YYYY-MM-DD'); = moment(dateStart).subtract(moment(dateEnd).diff(moment(dateStart), 'days') + 1,'days').format('YYYY-MM-DD');
                        // var previousEnd = moment(dateStart).subtract(1,'day').format('YYYY-MM-DD');
                        $('#reportrange span').html(var previousEnd = moment(dateStart).subtract(1,'day').format('YYYY-MM-DD');format('MMMM D, YYYY') + ' - ' + previousEnd.format('MMMM D, YYYY'));
                     }else{

                         // alert("cucou2");
                         $('#reportrange span').html(start.format('MMMM D, YYYY') + ' - ' + end.format('MMMM D, YYYY'));
                     }


             }
        $('#reportrange').daterangepicker({
            "locale": {
                "applyLabel": "Valider",
                "cancelLabel": "Annuler",
                "fromLabel": "Du",
                "toLabel": "Au",
                "customRangeLabel": "Personnaliser",
            },
        startDate: start,
        endDate: end,
        ranges: {
            'ALL': [ null, null],
            'Mois en cours': [moment().startOf('month'), moment().endOf('month')],
            'Mois dernier': [moment().subtract(1, 'month').startOf('month'), moment().subtract(1, 'month').endOf('month')],
            'Deux mois derniers': [moment().subtract(2, 'month').startOf('month'), moment().endOf('month')],
            'Année dernière': [moment().subtract(1, 'year').startOf('year'), moment().subtract(1, 'year').endOf('year')]
        }
    }, cb);
        cb(start, end);
    });

    function isInvalidDate(value) {
        if (value === undefined) {
            return '';
        } else if (value === null) {
            return '';
        } else if (value == '') {
            return '';
        }
        return moment(value).format('YYYY-MM-DD');
    }
</script>




<!--Internal  Flot js-->
<!-- Moment js -->






<script type="text/javascript" src="https://cdn.jsdelivr.net/momentjs/latest/moment.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/moment-locale-fr@1.0.0/fr.min.js" charset="UTF-8"></script>
<script type="text/javascript" src="https://cdn.jsdelivr.net/npm/daterangepicker/daterangepicker.min.js"></script>


@endsection
