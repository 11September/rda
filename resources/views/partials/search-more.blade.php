<section class="wrapper-search-more">
    <div class="search-more">
        <form name="search" action="{{ action('NewsController@search') }}">
            {{ csrf_field() }}

            <input name="search" type="text" placeholder="Пошук сайтом...">
            <button type="submit">
                <i class="fas fa-search"></i>
            </button>
        </form>
    </div>
</section>