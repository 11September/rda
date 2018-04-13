<section class="big-slider">
    <div class="big-slider-body owl-carousel  owl-theme">

        @foreach($sliders as $slider)
            <div><img src="{{ asset('storage/' . $slider->image) }}"></div>
        @endforeach

    </div>
</section>