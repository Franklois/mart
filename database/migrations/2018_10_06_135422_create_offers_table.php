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
            $table->increments('offer_id')->unsigned();

            $table->integer('product_id')->unsigned()->index();
            $table->foreign('product_id')->references('product_id')->on('products')->onDelete('cascade');

            $table->string('offer_title');
            $table->float('offer_price');
            $table->float('offer_discount');
            $table->text('offer_description');
            $table->string('offer_status');
            $table->string('offer_type');
            $table->date('offer_ends_date');

            $table->integer('employee_created_id')->unsigned()->index();
            $table->foreign('employee_created_id')->references('employee_id')->on('employees')->onDelete('cascade');

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
