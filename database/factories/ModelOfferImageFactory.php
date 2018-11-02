<?php

use Faker\Generator as Faker;

$factory->define(App\Model\OfferImage::class, function (Faker $faker) {
    return [

                  'offer_id' => 104,
                  'image_url' => 'http://via.placeholder.com/150x200'

    ];
});
