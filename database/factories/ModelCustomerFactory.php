<?php

use Faker\Generator as Faker;

$factory->define(App\Model\Customer::class, function (Faker $faker) {
    return [

      'customer_name' =>$faker->name,
      'customer_address_id' =>$faker->numberBetween(151,159) ,
      'contact_id' => $faker->numberBetween(1,9),
      'token' => 'AMINALJEBBEH96',
      'verification_code' => $faker->numberBetween(1000,9999),


    ];
});
