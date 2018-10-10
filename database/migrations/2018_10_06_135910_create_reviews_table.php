<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateReviewsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('reviews', function (Blueprint $table) {
            $table->increments('review_id');

            $table->integer('customer_id')->unsigned()->index();
            $table->foreign('customer_id')->refrences('customer_id')->on('customers')->onDelete('cascade');

            $table->integer('product_id')->unsigned()->index();
            $table->forgien('product_id')->refrences('product_id')->on('products')->onDelete('cascade');

            $table->integer('review_star');
            $table->string('review_title');
            $table->string('review_comment');

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
        Schema::dropIfExists('reviews');
    }
}
