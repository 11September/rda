<?php
namespace TCG\Voyager\Widgets;
use App\Page;
use TCG\Voyager\Facades\Voyager;
use Arrilot\Widgets\AbstractWidget;
class PageDimmer extends AbstractWidget
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
        $count = Page::all()->count();
        $string = $count == 1 ? 'Cторінки' : 'Cторінки';
        return view('voyager::dimmer', array_merge($this->config, [
            'icon'   => 'voyager-file-text',
            'title'  => "{$count} {$string}",
            'text'   => "В базі даних {$count} cторінок.",
            'button' => [
                'text' => 'Подивитись все',
                'link' => route('voyager.pages.index'),
            ],
            'image' => asset('voyager/03.jpg'),
        ]));
    }
}