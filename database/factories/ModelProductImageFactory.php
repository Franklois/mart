<?php

use Faker\Generator as Faker;

$factory->define(App\Model\ProductImage::class, function (Faker $faker) {
    return [


      'product_id' => $faker->numberBetween(1,30),
      'product_image_front' => 'http://www.baladisupermarket.com/wp-content/uploads/2015/11/7290002954484.jpg',
      'product_image_back' => 'http://www.baladisupermarket.com/wp-content/uploads/2015/11/7290002954484.jpg' 




    ];
});
