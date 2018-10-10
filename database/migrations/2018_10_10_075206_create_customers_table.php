<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateCustomersTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('customers', function (Blueprint $table) {
            $table->increments('customer_id');
            $table->increments('customer_name');

            $table->increments('customer_address_id');

            $table->integer('customer_address_id')->unsigned()->index();
            $table->forgien('customer_address_id')->refrences('address_id')->on('adresses')->onDelete('cascade');

            $table->increments('contact_id');

            $table->integer('contact_id')->unsigned()->index();
            $table->forgien('contact_id')->refrences('contact_id')->on('contacts')->onDelete('cascade');

            $table->increments('token');
            $table->increments('verification_code');


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
        Schema::dropIfExists('customers');
    }
}
