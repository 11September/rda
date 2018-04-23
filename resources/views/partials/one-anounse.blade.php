<div class="col-md-6">
    <div class="post-item">
        <div class="row">

            @if($post->image)
                <div class="col-xl-6 news_item_img">
                    <a class="hover-image" href="{{ action('AnounsesController@post', $post->id) }}">
                        <img src="{{ asset('storage/' . $post->image) }}" alt="{{ $post->title }}">
                    </a>
                </div>
            @endif

            <div class="col-xl-6 post-item-description">
                <div class="row">
                    <div class="col-md-12">
                        <div class="post-item-calender">
                            <i class="fas fa-calendar-alt"></i>
                            <p class="post-item-calender-date">{{ Carbon\Carbon::parse($post->created_at)->format('d.m.Y') }}</p>
                        </div>
                    </div>
                </div>
                <a href="{{ action('AnounsesController@post', $post->id) }}">
                    <h3>{{ $post->title }}</h3>
                </a>
            </div>
        </div>

        <div class="row">
            <div class="col-md-12">
                <div class="wrapper-post-content">
                    <div class="post-content">
                        {!! $post->body !!}
                    </div>
                </div>
            </div>
        </div>
        <div class="clearfix"></div>
        <div class="post-item-bottom">
            <div class="row">
                <div class="col-md-7">
                    <div class="wrapper-post-item-category">
                        <i class="fas fa-user"></i>
                        <p class="post-item-user">{{ $post->author }}</p>
                    </div>
                </div>
                <div class="col-md-5">
                    <a class="post-item-more" href="{{ action('AnounsesController@post', $post->id) }}">
                        <span>Докладніше...</span>
                    </a>
                </div>
            </div>
        </div>
    </div>
</div>