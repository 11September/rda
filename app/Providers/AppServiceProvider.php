<?php

namespace App\Providers;

use App\Album;
use App\Gallery;
use App\Slider;
use Illuminate\Support\ServiceProvider;

class AppServiceProvider extends ServiceProvider
{
    /**
     * Bootstrap any application services.
     *
     * @return void
     */
    public function boot()
    {
        //
    }

    /**
     * Register any application services.
     *
     * @return void
     */
    public function register()
    {
        view()->composer('partials.gallery-photos', function ($view) {
            $view->with('photos', Album::thubnails_photos());
        });

        view()->composer('partials.slider', function ($view) {
            $view->with('sliders', Slider::thubnails_photos());
        });

    }
}
