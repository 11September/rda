<h2>АНОНСИ ПОДІЙ</h2>

<ul class="anonses-menu">

    @foreach($anounses as $anouns)
        <li class="anonses-menu-item">
            <a href="{{ action('AnounsesController@post', $anouns->id ) }}">
                {{ $anouns->title }}
            </a>
        </li>
    @endforeach

    <li class="all_anounses">
        <a href="{{ url('/anounses') }}">Все Анонси</a>
    </li>
</ul>