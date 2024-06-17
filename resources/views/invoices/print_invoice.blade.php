<html lang="fr">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Invoice</title>
    <link rel="stylesheet" href="{{ public_path("assets/plugins/bootstrap/css/bootstrap.min.css") }}"  >
    <link rel="stylesheet" href="{{ public_path("assets/css/pdf.css") }}"  type="text/css">
    <style>

    </style>
</head>
<body>
<!-- Define Header Block -->
<header>
    <table class="w-full">
        <tr>
            <td colspan="2">
                @if ($invoice->societe_id == 1)
                    <img src="{{ public_path("assets/img/pdf/EnteteAby.png") }}"  alt="Aby Finance"  style="width:100%;">
                @elseif ($invoice->societe_id == 2)
                    <img src="{{ public_path("assets/img/pdf/EnteteSagi.png") }}"  alt="Aby Finance"  style="width:100%;">
                @endif
            </td>

        </tr>
        <tr>
            <td  style="vertical-align: top; margin-top:0.0rem;">
                @if ($invoice->societe_id == 1)
                    <img src="{{ public_path("assets/img/pdf/logo-aby.png") }}"  alt="Aby Finance" style="width: 100px;" >
                @elseif ($invoice->societe_id == 2)
                    <img src="{{ public_path("assets/img/pdf/logo-sagi.jpg") }}"  alt="Aby Finance" style="width: 100px;" >
                @endif
            </td>

            <td style="vertical-align: top">
                <div class="title1" >N° Facture: {{ $invoice->invoice_number }}</div>
            </td>
        </tr>
    </table>

</header>
<!-- Define Footer Block -->
<footer>
    <div class="containerFoot">
			@if ($invoice->societe_id == 1)
                    <img src="{{ public_path("assets/img/pdf/Pied_PageAby.png") }}"  alt="Aby Finance" style="width:100%;">
                @elseif ($invoice->societe_id == 2)
					<img src="{{ public_path("assets/img/pdf/Pied_PageSagi.png") }}"  alt="Aby Finance" style="width:100%;">
			@endif
    </div>
</footer>


<main>
@php
    $formaterNum = new NumberFormatter('fr_FR',NumberFormatter::DECIMAL);
    $fWord       = new NumberFormatter("fr", NumberFormatter::SPELLOUT);
@endphp
    <div>
        <table>
            <tr>
                    <td style="width:18%">
                        @php
                            $dtf = (isset($invoice->invoice_date) ? $newDate = date("d-m-Y", strtotime($invoice->invoice_date)) :"");
                        @endphp
                      <span class ="title2">Date de la facture</span>
                    </td>
                    <td><span style="text-align: right;">:</span></td>
                    <td style="width:47%">
                        <div> <span class ="title2">&nbsp;{{ $dtf }}</span> </div>
                    </td>
                    <td style="width:11%">
                        <div><span class ="title2">Destinataire</span></div>
                    </td>
                    <td><span style="text-align: right;">:</span></td>
                    <td style="width:24%; text-align: justify;">
                        <div>  <span class ="title2">&nbsp;{{ $invoice->client_name }}</span> </div>
                    </td>
            </tr>
            <tr>
                    <td>
                        <div>  <span class ="title2">Reference de la facture</span></div>
                    </td>
                    <td><span style="text-align: right;">:</span></td>
                    <td>
                        <div>  <span class ="title2">&nbsp;{{ $invoice->invoice_number }}</span> </div>
                    </td>
                    <td>
                        <div ><span class ="title2">Adresse</span></div>
                    </td>
                    <td><span style="text-align: right;">:</span></td>
                    <td style="text-align: justify;">
                        <div ><span class ="title2">&nbsp;{{ $invoice->client_adress }}</span></div>
                    </td>
            </tr>
            <tr>
                <td>
                     <div><span class ="title2">Type de prestation</span></div>
                </td>
                <td><span style="text-align: right;">:</span></td>
                <td>
                    <div>  <span class ="title2">&nbsp;{{ $invoice->missionType->mission_type_name }}</span> </div>
                </td>
                <td>
                    <div ><span class ="title2">ICE</span></div>
                </td>
                <td><span style="text-align: right;">:</span></td>
                <td>
                    <div ><span class ="title2">&nbsp;{{ $invoice->ice }}</span></div>
                </td>
            </tr>
            <tr>
                <td>
                    <div>  <span class ="title2">Réference B.C</span></div>
                </td>
                <td><span style="text-align: right;">:</span></td>
                <td>
                    <div><span class ="title2">&nbsp;{{ $invoice->ref_bc}}</span></div>
                </td>
                <td>
                    <div>  </div>
                </td>
                <td>
                    <div>  </div>
                </td>
                <td>
                    <div>  </div>
                </td>

            </tr>
        </table>
    </div>
    <div class ="title2 margin-top"> Merci d'avoir choisi notre cabinet pour nos sevices.</div>
    <div class="margin-top">
        <table class="products">
            <thead>
                <tr>
                    <th style="text-align:center; width:45%">Description</th>
                    <th style="text-align:center; width:13%">Quantité</th>
                    <th style="text-align:center; width:15%">P.U HT (MAD)</th>
                    <th style="text-align:center; width:12%">TVA (%)</th>
                    <th style="text-align:center; width:15%">Total HT (MAD)</th>
                </tr>
            </thead>
            @php
                $i = 0;
                $valMntTVA = 0;
            @endphp
            <tbody>
            @foreach ($tableDataPres as $pres)
                @php
                    $i++;
                     $valMntTVA +=  $pres->quantity * $pres->amount * $pres->VAT;
                @endphp
                <tr class="items">

                    <td  style="word-wrap:break-word; width:45%">
                            <!-- Your content here -->
                            <pre style="word-wrap:break-word;">{{ $pres->description }}</pre>
                    </td>
                    <td style="text-align:center">
                        {{ number_format($pres->quantity,2,'.',' ') }}
                    </td>
                    <td  style="text-align:center">
                        {{ number_format($pres->amount,2,'.',' ') }}
                    </td>
                    <td style="text-align:center">
                        {{ number_format($pres->VAT * 100,2,'.',' ') }}
                    </td>
                    <td style="text-align:center">
                        {{ number_format($pres->quantity * $pres->amount,2,'.',' ')  }}
                    </td>
                </tr>
             @endforeach
            </tbody>
        </table>
    </div>

    <div class="total">
        Total HT : {{ number_format($invoice->totalHT,2,'.',' ')}} MAD
    </div>
    @if ($invoice->totalHTRem > 0)
        <div class="total">
            Remise ({{ number_format($invoice->discount,2,'.',' ')}}%)  : {{number_format($invoice->totalHTRem,2,'.',' ')}} MAD
        </div>
    @endif
    <div class="total">
        Montant TVA : {{number_format($invoice->montantTVA,2,'.',' ')}} MAD
    </div>
    <div class="total">
        Total (1) TTC : {{number_format($invoice->totalTTC,2,'.',' ')}} MAD
    </div>

    <div class="margin-top">
        @if (count($tableFees)> 0)
        <div> <span class ="title2">Frais de mission: </span></div>
        <div class="margin-top">
            <table class="products">
                <thead>
                    <tr>
                        <th style="text-align:center; width:70%">Description</th>
                        <th style="text-align:center; width:30%">Montant (MAD)</th>
                    </tr>
                </thead>
                @php
                    $valF = 0;
                    $i = 0;

                @endphp
                <tbody>
                        @foreach ($tableFees as $fees)
                            @php
                                $i++;
                            @endphp
                             <tr class="items">
                                        <td style="word-wrap:break-word">
                                            <pre>{{ $fees->description }}</pre>
                                        </td>

                                        <td style="text-align:center">
                                            {{ number_format($fees->amount,2,'.',' ') }}
                                            @php
                                                $valF +=  $fees->amount ;
                                            @endphp
                                        </td>

                            </tr>
                        @endforeach
                </tbody>


            </table>
        </div>

            <div class="total">
                Total (2) TTC : {{$valF}} MAD
            </div>
            <div class="total">
                Total (1 + 2) TTC: {{number_format($invoice->totalTTC2,2,'.',' ')}} MAD
            </div>
    @endif
    </div>
    <table>
        <tr>
            <td  style = "width: 60%">
                @php
                    $valTvaArr = explode('.',$invoice->totalTTC2);
                    $valMnt1 =  $valTvaArr[0];
                    $valMnt2 = $valTvaArr[1];
                    $val1 = $fWord->format($valMnt1);
                    $val2 = $fWord->format($valMnt2);
                    $val1 = strtoupper($val1);
                    $val2 = strtoupper($val2);
                  /*  var $val2 = 0;
                   @if ($valTva2 > 0)
                     $val2 = $fWord->format($valTva2);*/
                   /* $val =$fWord->format($invoice->totalTTC);
                        if ($invoice->totalTTC2 > $invoice->totalTTC)
                            $val = $fWord->format($invoice->totalTTC2);
                        $val = strtoupper($val);*/
                @endphp
                @if ($valMnt2 > 0)
                    <span class ="title2">ARRETE A LA SOMME TTC DE : {{$val1}} DIRHAMS ET {{$val2}} CENTIMES.</span>
                @else
                    <span class ="title2">ARRETE A LA SOMME TTC DE : {{$val1}} DIRHAMS.</span>
                @endif
                <p class="lib">Veuillez libeller votre chèque à l'ordre de {{$invoice->societe->societe_name}} SARL.</p>

            </td>
            <td style = "width: 40%">
                @if ($invoice->societe_id == 1)
                    <img src="{{ public_path("assets/img/pdf/CachetAby.png") }}"  alt="Aby Finance" style="float:right;margin-top:-15px;">
                @elseif ($invoice->societe_id == 2)
                    <img src="{{ public_path("assets/img/pdf/CachetSagi.jpg") }}"  alt="Aby Finance" style="float:right;margin-top:-20px;">
                @endif

            </td>
        </tr>
    </table>
</main>
</body>
</html>

