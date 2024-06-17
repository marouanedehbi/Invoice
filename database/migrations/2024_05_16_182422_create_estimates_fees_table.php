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
        Schema::create('estimates_fees', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->text('description');
            $table->decimal('amount',11,2);

            $table->unsignedBigInteger('estimate_id')->nullable();
            $table->foreign('estimate_id')->references('id')->on('estimates')->onDelete('cascade');
            //  $table->string('Created_by', 999);
            $table->softDeletes();
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('estimates_fees');
    }
};
