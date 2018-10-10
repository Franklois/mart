<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateOffersTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('offers', function (Blueprint $table) {
            $table->increments('offer_id');

            $table->integer('product_id')->unsigned()->index();
            $table->forgien('product_id')->refrences('product_id')->on('products')->onDelete('cascade');

            $table->increments('offer_title');
            $table->increments('offer_price');
            $table->increments('offer_discount');
            $table->increments('offer_description');
            $table->increments('offer_status');
            $table->increments('offer_type');
            $table->increments('offer_ends_date');

            $table->increments('employee_created_id')->unsigned()->index();
            $table->forgien('employee_created_id')->refrences('employee_id')->on('employee')->onDelete('cascade');

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
        Schema::dropIfExists('offers');
    }
}
