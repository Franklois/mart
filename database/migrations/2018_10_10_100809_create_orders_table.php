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
            $table->increments('order_id');

            $table->integer('customer_id')->unsigned()->index();
            $table->forgien('customer_id')->refrences('customer_id')->on('customers')->onDelete('cascade');

            $table->float('order_total');
            $table->string('order_status');

            $table->integer('delivary_address_id')->unsigned()->index();
            $table->forgien('delivary_address_id')->refrences('address_id')->on('adresses')->onDelete('cascade');


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
