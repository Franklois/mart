<?php

use Faker\Generator as Faker;
use App\Model\Category;

$factory->define(App\Model\Product::class, function (Faker $faker) {
    return [

    /*  'category_id' => function () {

        return Category::all()->category_id->random();
      },*/

      'category_id' =>$faker->numberBetween(1,15),
      'product_name' => 'رز صنوايت كيلو',
      'product_barcode' => $faker->ean13,
      'product_price' => $faker->numberBetween(100,3000),
      'product_waight' => $faker->numberBetween(1,10),
      'product_description' => 'رز صنوايت رز عالي الجودة يحتوي على النشا و البرغل  العدس و المكونات المفيدة',
      'product_unit' => 'كيلو غرام'


    ];
});
