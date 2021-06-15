<?php

namespace App\Providers;

use App\Level;
use App\Language;
use App\Menu;
use App\SocialIcons;
use App\SupportInfo;
use Illuminate\Support\Facades\Schema;
use Illuminate\Support\ServiceProvider;
use Illuminate\Support\Facades\View;

class AppServiceProvider extends ServiceProvider
{
    /**
     * Register any application services.
     *
     * @return void
     */
    public function register()
    {
        //
    }

    /**
     * Bootstrap any application services.
     *
     * @return void
     */
    public function boot()
    {
        Schema::defaultStringLength(191);

        // cache remember for 7 days
        view()->composer('*', function ($view) {
            $programmes= \Cache::remember('programmes',60*24*7 ,function(){
                return Level::orderBy('position','ASC')->select('id','title')->get();
            });
            $view->with('programmes',  $programmes);
        });
    }
}
