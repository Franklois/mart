<?php

use Faker\Generator as Faker;

$factory->define(App\Model\employee::class, function (Faker $faker) {
    return [


      'employee_name' => $faker->name,
      'employee_job_title' => $faker->jobTitle,
      'contact_id' => $faker->numberBetween(1,9),
      'ssn' => '01020305544',
      'employee_front_id_image' => 'http://via.placeholder.com/500x300',
      'employee_back_id_image' => 'http://via.placeholder.com/500x300',
      'employee_presonal_image' => 'http://via.placeholder.com/200x200',
      'shift_id' => $faker->numberBetween(1,3),
      'role_id' => $faker->numberBetween(0,5)



    ];
});
