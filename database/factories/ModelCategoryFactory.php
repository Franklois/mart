<?php

use Faker\Generator as Faker;

$factory->define(App\Model\Category::class, function (Faker $faker) {
    return [


      'category_name' => 'المشروبات الغازية' ,

      'subcategory_name' => 'المشروبات',

      'category_image' => 'https://previews.123rf.com/images/ivonnewierink/ivonnewierink1005/ivonnewierink100500128/6950394-green-and-blue-shopping-basket-for-the-supermarket.jpg' ,

      'subcategory_image' => 'https://previews.123rf.com/images/ivonnewierink/ivonnewierink1005/ivonnewierink100500128/6950394-green-and-blue-shopping-basket-for-the-supermarket.jpg'

    ];
});
