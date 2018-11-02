<?php

use Faker\Generator as Faker;

$factory->define(App\Model\ProductQuantity::class, function (Faker $faker)  {

    return [

      'product_id' => $number++,
      'store_id' => '5',
      'quantity' => $faker->numberBetween(1,30)
    ];
});
