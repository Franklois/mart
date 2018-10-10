<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateCashiersTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('cashiers', function (Blueprint $table) {
            $table->increments('cashier_id');

            $table->integer('store_id')->unsigned()->index();
            $table->forgien('store_id')->refrences('store_id')->on('stores')->onDelete('cascade');

            $table->double('cashier_value');
            $table->integer('cashier_order_count');
            $table->date('cashier_date');




            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('cashiers');
    }
}
