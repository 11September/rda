<div class="wrapper-gallery">
    <div class="row">

        @foreach($photos as $photo)
            <div class="col-md-4 col-sm-4">
                <div class="gallery-item">
                    <a href="{{ action('WelcomeController@album', $photo->id) }}">
                        <img src="{{ asset('storage/' . $photo->image) }}" alt="gallery">
                    </a>

                    <div class="wrapper-gallery-item-date">
                        <p class="gallery-item-date">
                            {{ Carbon\Carbon::parse($photo->created_at)->format('m.d.Y') }}
                        </p>
                    </div>
                </div>
            </div>
        @endforeach

    </div>
</div>