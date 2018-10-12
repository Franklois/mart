<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateOrdersTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('orders', function (Blueprint $table) {
            $table->increments('order_id')->unsigned();

            $table->integer('customer_id')->unsigned()->index();
            $table->foreign('customer_id')->references('customer_id')->on('customers')->onDelete('cascade');

            $table->float('order_total');
            $table->string('order_status');

            $table->integer('delivary_address_id')->unsigned()->index();
            $table->foreign('delivary_address_id')->references('address_id')->on('adresses')->onDelete('cascade');


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
        Schema::dropIfExists('orders');
    }
}
