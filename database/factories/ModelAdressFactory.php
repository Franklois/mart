<?php

use Faker\Generator as Faker;



$factory->define(App\Model\Adress::class, function (Faker $faker) {
      //  $faker = Faker::create('ar_SA');

    return [
    /*   //'address_name' => $faker->randomElement(['منزل','عمل']),
        'address_name' => $faker->word,
        'address_description' => $faker->Address,
        //'address_description' => $faker->streetAddress,
      //  'address_city'=> $faker->randomElement(['مشروع دمر ', 'ابو رمانة ', 'المهاجرين', 'الجبة','المزرعة','العدوي']),
      'address_city'=> 'مشروع دمر ',
        //'address_street_name' => $faker->streetname,
        'address_street_name' => $faker->Address,

        'address_floor' => $faker->numberBetween(0,9),
        //'address_building_name_or_number' => $faker->randomElement([$faker->word,$faker->numberBetween(1,50)]),
        'address_building_name_or_number' => $faker->numberBetween(1,50),
        'address_part' => $faker->numberBetween(1,30)*/

           'address_name' => 'العمل',

           'address_description' => 'اول بناية بآخر الخط بعد مبنى الخارجية القديم '
           ,'address_city'=> 'خورشيد',
            'address_street_name' => 'شارع الشهيد احمد بن محمد عبد الغفار' ,
            'address_floor' => '1',
            'address_building_name_or_number' => '1',
            'address_part' => 'خورشيد أول'

    ];
});
