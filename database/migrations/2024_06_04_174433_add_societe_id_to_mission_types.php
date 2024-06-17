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
        Schema::table('mission_types', function (Blueprint $table) {
            //
            $table->bigInteger( 'societe_id' )->unsigned()->nullable();
            $table->foreign('societe_id')->references('id')->on('societes')->onDelete('set null');

        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::table('mission_types', function (Blueprint $table) {
            //
            $table->dropForeign('mission_types_societe_id_foreign');
            $table->dropColumn('societe_id');
           // $table->foreign('societe_id')->references('id')->on('societes')->onDelete('cascade');
        });
    }
};
