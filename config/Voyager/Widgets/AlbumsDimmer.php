<?php
namespace TCG\Voyager\Widgets;
use App\Album;
use TCG\Voyager\Facades\Voyager;
use Arrilot\Widgets\AbstractWidget;
class AlbumsDimmer extends AbstractWidget
{
    /**
     * The configuration array.
     *
     * @var array
     */
    protected $config = [];
    /**
     * Treat this method as a controller action.
     * Return view() or other content to display.
     */
    public function run()
    {
        $count = Album::all()->count();
        $string = $count == 1 ? 'Альбом' : 'Альбом';
        return view('voyager::dimmer', array_merge($this->config, [
            'icon'   => 'voyager-photo',
            'title'  => "{$count} {$string}",
            'text'   => "В базі даних {$count} альбомiв.",
            'button' => [
                'text' => 'Подивитись все',
                'link' => route('voyager.albums.index'),
            ],
            'image' => asset('voyager/facebook-shared-photo-albums.jpg'),
        ]));
    }
}