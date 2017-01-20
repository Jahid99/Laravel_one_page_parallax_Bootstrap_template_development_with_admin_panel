<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateHeaderInfosTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('header_infos', function (Blueprint $table) {
            $table->increments('id');
            $table->string('title');
            $table->string('brand_head');
            $table->string('brand_subhead');
            $table->string('menu1');
            $table->string('menu2');
            $table->string('menu3');
            $table->string('menu4');
            $table->string('menu5');
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('header_infos');
    }
}
