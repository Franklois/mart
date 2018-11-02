<?php

use Faker\Generator as Faker;

$factory->define(App\Model\Contact::class, function (Faker $faker) {
    return [

        'contact_mobile_number' => '0957570213',
        'contact_email' => $faker->freeEmail,
        'contact_home_number' => '0113116734',
        'contact_web_site' => 'Facebook.com'


    ];
});
