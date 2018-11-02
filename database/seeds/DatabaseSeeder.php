<?php

use Illuminate\Database\Seeder;

class DatabaseSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        // $this->call(UsersTableSeeder::class);
        //factory(App\Model\Adress::class,3)->create();
        //factory(App\Model\Contact::class,9)->create();
        //factory(App\Model\Category::class,3)->create();

        //factory(App\Model\Product::class,30)->create();
        //factory(App\Model\ProductImage::class,30)->create();
        //factory(App\Model\store::class,1)->create();

        factory(App\Model\Review::class,100)->create();






    }
}
