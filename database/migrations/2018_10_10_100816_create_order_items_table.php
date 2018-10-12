<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateOrderItemsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('order_items', function (Blueprint $table) {
            $table->increments('order_items_id')->unsigned();

            $table->integer('order_id')->unsigned()->index();
            $table->foreign('order_id')->references('order_id')->on('orders')->onDelete('cascade');

            $table->float('unit_price');

            $table->integer('product_id')->unsigned()->index();
            $table->foreign('product_id')->references('product_id')->on('products')->onDelete('cascade');

            $table->integer('unit_count');

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
        Schema::dropIfExists('order_items');
    }
}
