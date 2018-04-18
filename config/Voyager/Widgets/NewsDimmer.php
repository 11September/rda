<?php
namespace TCG\Voyager\Widgets;
use App\News;
use TCG\Voyager\Facades\Voyager;
use Arrilot\Widgets\AbstractWidget;
class NewsDimmer extends AbstractWidget
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
        $count = News::all()->count();
        $string = $count == 1 ? 'Новини' : 'Новини';
        return view('voyager::dimmer', array_merge($this->config, [
            'icon'   => 'voyager-news',
            'title'  => "{$count} {$string}",
            'text'   => "В базі даних {$count} новин.",
            'button' => [
                'text' => 'Посмотреть все',
                'link' => route('voyager.news.index'),
            ],
            'image' => asset('voyager/02.jpg'),
        ]));
    }
}