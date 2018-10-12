<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateFavoriteItemsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('favorite_items', function (Blueprint $table) {
            $table->increments('favorite_tiems_id')->unsigned();


            $table->integer('favorite_id')->unsigned()->index();
            $table->foreign('favorite_id')->references('favorite_id')->on('favorites')->onDelete('cascade');

            $table->integer('offer_id')->unsigned()->index();
            $table->foreign('offer_id')->references('offer_id')->on('offers')->onDelete('cascade');

            $table->integer('share_status');


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
        Schema::dropIfExists('favorite_items');
    }
}
