<?php

use Faker\Generator as Faker;

$factory->define(App\Model\Offer::class, function (Faker $faker) {
  $strings = array(
'Special offer',
'Normal Offer',
    );

    $key = array_rand($strings);

    return [


      'product_id' =>$faker->numberBetween(1,30),
      'offer_title' => ' رز صنوايت عالي الجودة',
      'offer_price' => $faker->numberBetween(1000,5000),
      'offer_discount' => $faker->numberBetween(0.1,0.5),

      'offer_description' => ' هذا العرض يتكون من علبتين من هذا المنتج بالإضافة للعرضو الخاصة الموجودة بداخلة و التوصل المجاني لداخل دمشق',
      'offer_status' =>$faker->numberBetween(0,1) ,

      'offer_type' => $strings[$key],

      'offer_ends_date' => $faker->dateTime('2018-11-1', $timezone = null),

      'employee_created_id' => $faker->numberBetween(1,5),



    ];
});
