<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateProductsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('products', function (Blueprint $table) {
            $table->increments('product_id')->unsigned();

            $table->integer('category_id')->unsigned()->index();
            $table->foreign('category_id')->references('category_id')->on('categories')->onDelete('cascade');

            $table->string('product_name');
            $table->string('product_barcode');
            $table->float('product_price');
            $table->float('product_waight');
            $table->text('product_description');
            $table->string('product_unit');
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
        Schema::dropIfExists('products');
    }
}
