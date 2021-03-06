<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateEmployeesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('employees', function (Blueprint $table) {
            $table->increments('employee_id')->unsigned();
            $table->string('employee_name');
            $table->string('employee_job_title');

            $table->integer('contact_id')->unsigned()->index();
            $table->foreign('contact_id')->references('contact_id')->on('contacts')->onDelete('cascade');

            $table->string('ssn')->change();
            $table->string('employee_front_id_image');
            $table->string('employee_back_id_image');
            $table->string('employee_presonal_image');

            $table->integer('shift_id');
            $table->integer('role_id');










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
        Schema::dropIfExists('employees');
    }
}
