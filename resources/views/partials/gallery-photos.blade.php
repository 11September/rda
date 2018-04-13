<div class="wrapper-gallery">
    <div class="row">

        @foreach($photos as $photo)
            <div class="col-md-6 col-sm-6">
                <div class="gallery-item">
                    <img src="{{ asset('storage/' . $photo->image) }}" alt="gallery">

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