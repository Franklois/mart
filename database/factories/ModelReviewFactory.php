<?php

use Faker\Generator as Faker;

$factory->define(App\Model\Review::class, function (Faker $faker) {
    return [


      'customer_id' =>$faker->numberBetween(1,30),
      'product_id' => $faker->numberBetween(1,30),

      'review_star' => $faker->numberBetween(1,5),

      'review_title' =>'عنوان وهمي للتقييم',

      'review_comment' => 'تعليق وهمي للتعليق على منتج معين تم شراءه بواسطة احد زبائن التطبيق و سوف يتم تغييره حسب الكتابة الصحيحة لك شحص على حدى '

    ];
});
