<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateInvoicesTable extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::create('invoices', function (Blueprint $table) {
            $table->bigIncrements('id');

            $table->string('invoice_number', 50);
            ///  $table->string('societe',100); ///
            $table->bigInteger( 'societe_id' )->unsigned();
            $table->foreign('societe_id')->references('id')->on('societes')->onDelete('cascade');
            $table->bigInteger( 'mission_type_id' )->unsigned();
            $table->foreign('mission_type_id')->references('id')->on('mission_types')->onDelete('cascade');
            $table->date('invoice_date');
            $table->date('prestation_date')->nullable();
            $table->string('client_name',100)->nullable();
            $table->string('ice',200)->nullable();
            $table->text('client_adress')->nullable();
            $table->string('object', 100)->nullable();
            $table->text('detail');

            $table->decimal('advance',11,2)->nullable();
            $table->decimal('discount',11,2)->nullable();
            $table->decimal('commission',11,2)->nullable();
            $table->string('payment_mode',80);

            $table->decimal('remainder',11,2);
            $table->decimal('totalHT',11,2);
            $table->decimal('totalHTRem',11,2);
            $table->decimal('montantTVA',11,2);
            $table->decimal('totalTTC',11,2);
            $table->decimal('totalTTC2',11,2);

            $table->string('status', 50);
            $table->integer('value_status');

            $table->date('payment_date')->nullable();

            $table->softDeletes();
            // $table->timestamps('created_at')->useCurrent();
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
}
