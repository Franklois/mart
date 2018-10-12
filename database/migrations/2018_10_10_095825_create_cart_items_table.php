<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateCartItemsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('cart_items', function (Blueprint $table) {
            $table->increments('cart_item_id')->unsigned();

            $table->integer('cart_id')->unsigned()->index();
            $table->foreign('cart_id')->references('cart_id')->on('carts')->onDelete('cascade');

            $table->integer('offer_id')->unsigned()->index();
            $table->foreign('offer_id')->references('offer_id')->on('offers')->onDelete('cascade');

            $table->integer('product_count');
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
        Schema::dropIfExists('cart_items');
    }
}
