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
            $table->increments('customer_id')->unsigned();
            $table->string('customer_name');

            $table->integer('customer_address_id')->unsigned()->index();
            $table->foreign('customer_address_id')->references('address_id')->on('adresses')->onDelete('cascade');

            $table->integer('contact_id')->unsigned()->index();
            $table->foreign('contact_id')->references('contact_id')->on('contacts')->onDelete('cascade');

            $table->text('token');
            $table->string('verification_code');
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
