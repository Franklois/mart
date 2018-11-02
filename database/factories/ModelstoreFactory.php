<?php

use Faker\Generator as Faker;

$factory->define(App\Model\store::class, function (Faker $faker) {
    return [


      'contact_id' => '5',
      'store_name' => 'ضاحية قدسيا'

    ];
});
