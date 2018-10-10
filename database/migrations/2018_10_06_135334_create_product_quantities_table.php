<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateProductQuantitiesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('product_quantities', function (Blueprint $table) {
            $table->increments('product_quantity_id');

            $table->integer('product_id')->unsigned()->index();
            $table->forgien('product_id')->refrences('product_id')->on('products')->onDelete('cascade');

            $table->integer('store_id')->unsigned()->index();
            $table->forgien('store_id')->refrences('store_id')->on('store')->onDelete('cascade');

            $table->integer('quantity');
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
        Schema::dropIfExists('product_quantities');
    }
}
