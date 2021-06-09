<?php 
namespace App\Traits;
use Illuminate\Support\Facades\Artisan;

trait CacheClear
{

    /**
     * Boot function for Laravel model events.
     * https://laravel.com/docs/5.8/eloquent#events
     *
     * @return void
     */
    public static function boot()
    {
        parent::boot();

        /**
         * After model is created, or whatever action, clear cache.
         */
        static::updated(function () {
            Artisan::call('cache:clear');
        });
    }
}
