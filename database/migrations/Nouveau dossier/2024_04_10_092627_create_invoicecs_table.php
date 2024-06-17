<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::create('invoices', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->string('invoice_number', 50);
            $table->date('invoice_date')->nullable();
            $table->date('prestation_date')->nullable();
            $table->string('object');
            $table->string('client_name',50);
            $table->text('client_adress');
            $table->integer('quantity');
            $table->string('ice',80);

           // $table->bigInteger( 'section_id' )->unsigned();

            $table->foreign('prestations_id')->references('id')->on('prestations')->onDelete('cascade');

          //  $table->string('section');
          //  $table->decimal('Amount_collection',8,2)->nullable();

            
            $table->decimal('discount',8,2);
            $table->decimal('advance',8,2);
            $table->decimal('remainder',8,2);
            $table->decimal('commission',8,2);

        //    $table->decimal('Value_VAT',8,2);
         //   $table->string('Rate_VAT', 999);

            $table->decimal('Total',8,2);


        $table->foreign('fees_id')->references('id')->on('fees')->onDelete('cascade');



            $table->string('Status', 50);
            $table->integer('Value_Status');

         //   $table->text('note')->nullable();

            $table->date('Payment_Date')->nullable();
            $table->softDeletes();
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('invoices');
    }
};
