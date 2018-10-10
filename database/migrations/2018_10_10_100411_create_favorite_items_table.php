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
            $table->increments('favorite_tiems_id');


            $table->integer('favorite_id')->unsigned()->index();
            $table->forgien('favorite_id')->refrences('favorite_id')->on('favorites')->onDelete('cascade');

            $table->integer('offer_id')->unsigned()->index();
            $table->forgien('offer_id')->refrences('offer_id')->on('offers')->onDelete('cascade');

            $table->intege('share_status');


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
