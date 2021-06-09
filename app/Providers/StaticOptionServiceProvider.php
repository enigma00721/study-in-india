<?php

namespace App\Providers;

use Illuminate\Support\ServiceProvider;
use App\StaticOption;

class StaticOptionServiceProvider extends ServiceProvider
{
    /**
     * Register services.
     *
     * @return void
     */
    public function register()
    {
        //
    }

    /**
     * Bootstrap services.
     *
     * @return void
     */
    public function boot()
    {
        $static_options= \Cache::rememberForever('static_options', function(){
                return StaticOption::select('option_name','option_value')->get();
            });
        // config()->set('settings', $settings);
    }
}
