@extends('layouts.master')
@section('css')
<!--  Owl-carousel css-->
<link href="{{URL::asset('assets/plugins/owl-carousel/owl.carousel.css')}}" rel="stylesheet" />
<!-- Maps css -->
<link href="{{URL::asset('assets/plugins/jqvmap/jqvmap.min.css')}}" rel="stylesheet">
<link href="{{URL::asset('assets/plugins/daterangepicker/css/daterangepicker.css')}}" rel="stylesheet">
<style>
    .center {
        margin: auto;
        width: 40%;
        border: 3px solid #73AD21;
        padding: 10px;
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
                    <div class="center">
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
                @php
                    $invCount = ($datas['dataInv'][1] > 0 ? $datas['dataInv'][1] : 100); // $datas['dataInv'][1]; // \App\Models\invoices::count();
                @endphp
                <div class="row row-sm">
                    <div class="col-xl-3 col-lg-6 col-md-6 col-xm-12">
                        <div class="card overflow-hidden sales-card bg-primary-gradient">
                            <div class="pl-3 pt-3 pr-3 pb-2 pt-0">
                                <div class="">
                                    <h6 class="mb-3 tx-12 text-white">TOUTES LES FACTURES</h6>
                                </div>
                                <div class="pb-0 mt-0">
                                    <div class="d-flex">
                                        <div id="allInv" class="">
                                            <h4 class="tx-20 font-weight-bold mb-1 text-white" style="width:150%">
                                                {{number_format($datas['dataInv'][0],2,'.',' ') }} MAD
                                            </h4>
                                            <p class="mb-0 tx-13 text-white op-7">Total facture :{{ $datas['dataInv'][1]}} </p>

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
                                        <div id="NPInv" class="">
                                            <h4 class="tx-20 font-weight-bold mb-1 text-white" style="width:150%">
                                                {{number_format($datas['dataInv'][2],2,'.',' ')}} MAD</h4>
                                            <p class="mb-0 tx-12 text-white op-7">Total facture: {{$datas['dataFactNP'][0] + $datas['dataFactNP'][1]}}</p>
                                        </div>
                                        <span class="float-right my-auto mr-auto">
                                             &nbsp; &nbsp; &nbsp; &nbsp;
                                            <i class="fas fa-arrow-circle-down text-white"></i>
                                            <span id="NPInvPer" class="text-white op-7">
                                                {{round(($datas['dataFactNP'][0] + $datas['dataFactNP'][1]) / $invCount * 100)}}%</span>
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
                                        <div id ="PAInv" class="">
                                            <h4 class="tx-20 font-weight-bold mb-1 text-white"  style="width:150%">
                                                {{number_format($datas['dataInv'][4],2,'.',' ')}} MAD
                                            </h4>
                                            <p class="mb-0 tx-12 text-white op-7">Total facture : {{$datas['dataFactPay'][0] + $datas['dataFactPay'][1]}}</p>
                                        </div>
                                        <span class="float-right my-auto mr-auto">
                                               &nbsp; &nbsp; &nbsp; &nbsp;
                                            <i class="fas fa-arrow-circle-up text-white"></i>

                                            <span id = "PAInvPer" class="text-white op-7">
                                                {{round(($datas['dataFactPay'][0] + $datas['dataFactPay'][1]) / $invCount * 100)}}%</span>
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
                                        <div id ="PPInv" class="">
                                            <h4 class="tx-20 font-weight-bold mb-1 text-white"  style="width:150%">
                                                {{number_format($datas['dataInv'][3],2,'.',' ')}} MAD

                                            </h4>
                                            <p class="mb-0 tx-12 text-white op-7">
                                                Total facture : {{$datas['dataFactPP'][0] + $datas['dataFactPP'][1]}}
                                            </p>
                                        </div>
                                        <span class="float-right my-auto mr-auto">
                                             &nbsp; &nbsp; &nbsp; &nbsp;
                                            <i class="fas fa-arrow-circle-down text-white"></i>

                                            <span id ="PPInvPer" class="text-white op-7">
                                                {{round(($datas['dataFactPP'][0] + $datas['dataFactPP'][1]) / $invCount * 100)}}%</span>
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
                    <div class="col-md-12">
                        <div class="card overflow-hidden">
                            <div class="card-body">
                                <div class="row row-sm">
                                    <div class="col-sm-12 col-md-6 col-xl-4">
                                        <div class="main-content-label tx-12 mg-b-15">
                                            Chiffre d'affaire facture vs Societe
                                        </div>
                                        <div class="ht-200 ht-lg-250">
                                            <canvas id="chartCAFact"></canvas>
                                        </div>
                                        <p id="caAllFACT" class="tx-14 mb-0" > - &nbsp;CA  GLOBAL &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :
                                            {{  number_format(($datas['dataCAFact'][0] + $datas['dataCAFact'][1]),2,'.',' ') }} MAD.</p>
                                        <p id="caAbyFACT" class="tx-14 mb-0"> - &nbsp;CA ABY FINANCE &nbsp; :
                                            {{ number_format($datas['dataCAFact'][0],2,'.',' ') }} MAD.</p>
                                        <p id="caSDFACT" class="tx-14 mb-0"> - &nbsp;CA SAGIDEV &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;:
                                            {{ number_format($datas['dataCAFact'][1],2,'.',' ') }} MAD.</p>
                                    </div><!-- col-6 -->
                                    <div class="col-sm-12 col-md-6 col-xl-4 mg-t-20 mg-md-t-0">
                                        <div class="main-content-label tx-12 mg-b-15">
                                            Chiffre d'affaire encaisse vs Societe
                                        </div>
                                        <div class="ht-200 ht-lg-250">
                                            <canvas id="chartCAEnc"></canvas>
                                        </div>

                                        <p id ="caAllEnc" class="tx-14 mb-0"> - &nbsp;CA  GLOBAL  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;:
                                            {{  number_format(($datas['dataCAEnc'][0] + $datas['dataCAEnc'][1]),2,'.',' ') }} MAD.</p>
                                        <p id ="caAbyEnc" class="tx-14 mb-0"> - &nbsp;CA ABY FINANCE &nbsp;&nbsp;&nbsp; :
                                            {{ number_format($datas['dataCAEnc'][0],2,'.',' ') }} MAD.</p>
                                        <p id ="caSDFEnc" class="tx-14 mb-0"> - &nbsp;CA SAGIDEV &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;:
                                            {{ number_format($datas['dataCAEnc'][1],2,'.',' ') }} MAD.</p>
                                    </div><!-- col-6 -->
                                    <div class="col-sm-12 col-md-6 col-xl-4 mg-t-20 mg-xl-t-0">
                                        <div class="main-content-label tx-12 mg-b-15">
                                            Statut des factures vs Societe
                                        </div>
                                        <div style="height:300px;">
                                            <canvas id="chartFact"></canvas>
                                        </div>
                                    </div><!-- col-6 -->
                                </div>
                            </div><!-- col-12 -->
                        </div><!-- col-12 -->
                    </div><!-- col-12 -->
                </div>
                <!-- row closed -->
                <!-- row opened -->




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

-->
<script src="{{URL::asset('assets/plugins/chart.js/chart.js')}}"></script>
<script src="{{URL::asset('assets/plugins/chart.js/chartjs-plugin-datalabels.min.js')}}"></script>
<script src="{{URL::asset('assets/plugins/chart.js/chartjs-plugin-labels.min.js')}}"></script>

<script src="{{URL::asset('assets/js/apexcharts.js')}}"></script>
<script src="{{URL::asset('assets/js/index.js')}}"></script>
<script src="{{URL::asset('assets/js/jquery.vmap.sampledata.js')}}"></script>

<script type="text/javascript" src="{{URL::asset('assets/plugins/moment/min/moment.min.js')}}"></script>
<script src="{{URL::asset('assets/plugins/moment/min/locales.min.js')}}" charset="UTF-8"></script>
<script type="text/javascript" src="{{URL::asset('assets/plugins/daterangepicker/js/daterangepicker.min.js')}}"></script>




<script>
    // Manually register the chartjs datalabels plugin
    // Chart.register(ChartDataLabels);
    const ctx = document.getElementById('chartFact');
   var chartBarFact = new Chart(ctx, {
        type: 'bar',
        data: {
            labels: ['ABY FINANCE', 'SAGIDEV'],
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
            maintainAspectRatio: false,
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
    var chartPieCAFact = new Chart(ctxp, {
        type: 'pie',
        data: {
            labels: ['ABY FINANCE', 'SAGIDEV'],
            datasets: [{
                data:   @json($datas['dataCAFact']),
                borderWidth: 1,
                backgroundColor: ['rgba(76, 50, 116, 0.98)',
                    'rgba(213, 120, 7, 0.8)',],
                //  borderColor: 'blue',
            },
            ]
        },
        options: {
            tooltips: {
                enabled: false
            },
            plugins: {
                legend: {
                    display: true,
                    position: "top",
                    align: "center",
                },
                datalabels: {
                    formatter: (value, ctxp) => {
                        const datapoints = ctxp.chart.data.datasets[0].data
                         const total = datapoints.reduce((total, datapoint) => parseFloat(total) + parseFloat(datapoint), 0)
                       //  const total = parseFloat(ctxp.chart.data.datasets[0].data[0]) + parseFloat(ctxp.chart.data.datasets[0].data[1])
                        const percentage = parseFloat(value / total * 100).toFixed(2)
                        if (percentage < 3)
                            return "";
                        return percentage + "%";
                    },
                    color: '#fff',
                    font: {
                        weight: 'bold',
                    },
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
        plugins : [ChartDataLabels]
    });


</script>

<script>
    const ctxe = document.getElementById('chartCAEnc');
    var chartPieCAEnc = new Chart(ctxe, {
        type: 'pie',
        data: {
            labels: ['ABY FINANCE', 'SAGIDEV'],
            datasets: [{
                data: @json($datas['dataCAEnc']),
                borderWidth: 1,
                backgroundColor: ['rgba(76, 50, 116, 0.98)',
                    'rgba(213, 120, 7, 0.8)',],
                borderColor: "#fff",
            },
            ]
        },
        options: {
            tooltips: {
                enabled: false
            },
            plugins: {
                legend: {
                    display: true,
                    position: "top",
                    align: "center",
                },
                datalabels: {
                    formatter: (value, ctxe) => {
                        const datapoints = ctxe.chart.data.datasets[0].data
                        const total = datapoints.reduce((total, datapoint) => parseFloat(total) + parseFloat(datapoint), 0)
                        //  const total = parseFloat(ctxe.chart.data.datasets[0].data[0]) + parseFloat(ctxp.chart.data.datasets[0].data[1])
                        const percentage = parseFloat(value / total * 100).toFixed(2)
                        if (percentage < 3)
                            return "";
                        return percentage + "%";
                    },
                    color: '#fff',
                    font: {
                        weight: 'bold',
                    },
                },
            },

        },
        plugins : [ChartDataLabels]
    });
</script>


<script type="text/javascript">
    moment.locale('fr');
    $(function() {
       // $('#reportrange span').html("ALL");

            start = moment().startOf('year');
            end = moment().endOf('year');

        function cb(start, end) {
                     if (!start.isValid() || !end.isValid()) // (isNaN(start) && isNaN(end))
                         $('#reportrange span').html("ALL");
                     else
                         $('#reportrange span').html(start.format('MMMM D, YYYY') + ' - ' + end.format('MMMM D, YYYY'));
        }
        $('#reportrange').daterangepicker({
            "locale": {
                "applyLabel": "Valider",
                "cancelLabel": "Annuler",
              //  "fromLabel": "Du",
               // "toLabel": "Au",
                "customRangeLabel": "Personnaliser",
                format: 'MM/DD/YYYY',
            },
            // alwaysShowCalendars: false,
            // autoUpdateInput : false,
            // singleDatePicker: false,
            // autoApply : true,
           /* linkedCalendars : false,
            showCustomRangeLabel:true,
            showDropdowns : true,
            minYear: 2020,
            maxYear: parseInt(moment().format('YYYY'),10), */
            startDate: start,
            endDate: end,
        ranges: {
            'All': [ "", ""],
            'Année en cours ': [moment().startOf('year'), moment().endOf('year')],
            'Mois en cours': [moment().startOf('month'), moment().endOf('month')],
            'Dernier mois': [moment().subtract(1, 'month').startOf('month'), moment().subtract(1, 'month').endOf('month')],
            'Deux derniers mois ': [moment().subtract(2, 'month').startOf('month'), moment().endOf('month')],
            'Année dernière': [moment().subtract(1, 'year').startOf('year'), moment().subtract(1, 'year').endOf('year')],
        }
    }, cb);
        cb(start, end);
        // The event listener here.
        $('#reportrange').on('apply.daterangepicker', (e, picker) => {
          //  alert('The value has changed.');
            $.ajax({
                url: '{{url("/dashboard")}}',
                type: 'GET',
                data:{
                    sDate: (picker.startDate.isValid() ? picker.startDate.format('YYYY-MM-DD') : null),
                    eDate : (picker.endDate.isValid() ? picker.endDate.format('YYYY-MM-DD') : null),
                    call : "AJAX",
                },
                success: function(res) {
                 //   console.log (picker.ranges);
                    console.log(res);
                   // console.log(res['dataInv'][0].replace(/\B(?=(?:\d{3})+(?!\d))/g, ' '));
                   // console.log (res['dataInv'][0].toFixed(2));
                    $('#allInv h4').html(res['dataInv'][0].toFixed(2).toString().replace(/\B(?=(?:\d{3})+(?!\d))/g, ' ') + " MAD");
                    $('#allInv p').html("Total facture : " + res['dataInv'][1]);

                    $('#NPInv h4').html(res['dataInv'][2].toFixed(2).toString().replace(/\B(?=(?:\d{3})+(?!\d))/g, ' ') + " MAD");
                    $('#NPInv p').html("Total facture : " + (res['dataFactNP'][0] + res['dataFactNP'][1]));

                //    console.log(givenNumber.toLocaleString('en-US'))
                    var inbInv = (res['dataInv'][1] > 0 ? res['dataInv'][1] : 100);
//                    console.log(parseFloat((res['dataFactNP'][0] + res['dataFactNP'][1]) / inbInv * 100).toFixed(2));
                    $('#NPInvPer').html(parseFloat((res['dataFactNP'][0] + res['dataFactNP'][1]) / inbInv * 100).toFixed(2) + "%");


                    $('#PAInv h4').html(res['dataInv'][4].toFixed(2).toString().replace(/\B(?=(?:\d{3})+(?!\d))/g, ' ') + " MAD");
                    $('#PAInv p').html("Total facture : " + (res['dataFactPay'][0] + res['dataFactPay'][1]));
//                    console.log(parseFloat((res['dataFactNP'][0] + res['dataFactNP'][1]) / inbInv * 100).toFixed(2));
                    $('#PAInvPer').html(parseFloat((res['dataFactPay'][0] + res['dataFactPay'][1]) / inbInv * 100).toFixed(2) + "%");

                    $('#PPInv h4').html(res['dataInv'][3].toFixed(2).toString().replace(/\B(?=(?:\d{3})+(?!\d))/g, ' ') + " MAD");
                    $('#PPInv p').html("Total facture : " + (res['dataFactPP'][0] + res['dataFactPP'][1]));
                    $('#PPInvPer').html(parseFloat(Math.round((res['dataFactPP'][0] + res['dataFactPP'][1]) / inbInv * 100).toFixed(2)) + "%");

                    var caFact = (parseFloat(res['dataCAFact'][0]) + parseFloat(res['dataCAFact'][1]));
                    $('#caAllFACT').html(" - &nbsp;CA  GLOBAL &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; : " + caFact.toFixed(2).toString().replace(/\B(?=(?:\d{3})+(?!\d))/g, ' ') + " MAD");
                    $('#caAbyFACT').html(" - &nbsp;CA ABY FINANCE &nbsp; : " + res['dataCAFact'][0].toFixed(2).toString().replace(/\B(?=(?:\d{3})+(?!\d))/g, ' ') + " MAD");
                    $('#caSDFACT').html(" - &nbsp;CA SAGIDEV &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;: " + res['dataCAFact'][1].toFixed(2).toString().replace(/\B(?=(?:\d{3})+(?!\d))/g, ' ') + " MAD");

                    var caEnc = (parseFloat(res['dataCAEnc'][0]) + parseFloat(res['dataCAEnc'][1]));
                    $('#caAllEnc').html(" - &nbsp;CA  GLOBAL &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; : " + caEnc.toFixed(2).toString().replace(/\B(?=(?:\d{3})+(?!\d))/g, ' ') + " MAD");
                    $('#caAbyEnc').html(" - &nbsp;CA ABY FINANCE &nbsp;&nbsp; : " + res['dataCAEnc'][0].toFixed(2).toString().replace(/\B(?=(?:\d{3})+(?!\d))/g, ' ') + " MAD");
                    $('#caSDFEnc').html(" - &nbsp;CA SAGIDEV &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;: " + res['dataCAEnc'][1].toFixed(2).toString().replace(/\B(?=(?:\d{3})+(?!\d))/g, ' ') + " MAD");

                    chartPieCAFact.data.datasets[0].data[0] = res['dataCAFact'][0];
                    chartPieCAFact.data.datasets[0].data[1] = res['dataCAFact'][1];
                    chartPieCAFact.update();

                    chartPieCAEnc.data.datasets[0].data[0] = res['dataCAEnc'][0];
                    chartPieCAEnc.data.datasets[0].data[1] = res['dataCAEnc'][1];
                    chartPieCAEnc.update();

                    chartBarFact.data.datasets[0].data[0] = res['dataFactPay'][0];
                    chartBarFact.data.datasets[0].data[1] = res['dataFactPay'][1];
                    chartBarFact.data.datasets[1].data[0] = res['dataFactPP'][0];
                    chartBarFact.data.datasets[1].data[1] = res['dataFactPP'][1];
                    chartBarFact.data.datasets[2].data[0] = res['dataFactNP'][0];
                    chartBarFact.data.datasets[2].data[1] = res['dataFactNP'][1];
                    chartBarFact.update();
                    // process your data to pull out what you plan to use to update the chart
                    // e.g. new label and a new data point

                    // add new label and data point to chart's underlying data structures
                    //  myChart.data.labels.push("Post " + postId++);
                    // myChart.data.datasets[0].data.push(getRandomIntInclusive(1, 25));

                    // re-render the chart
                    //  myChart.update();
                },
                error: function(xhr, status, errorThrown) {
                    console.log("erreur AJAX : " + xhr.status + "  " +  xhr.responseText);
                },
            });

            if (!picker.startDate.isValid() )
                picker.startDate =  moment(); //.startOf('year');
            if (!picker.endDate.isValid() )
                picker.endDate =  moment(); // .endOf('year');
           // console.log(picker);
    });


    });

</script>




@endsection
