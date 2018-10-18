<?php
    namespace App\Widgets;

    use Arrilot\Widgets\AbstractWidget;
    use Illuminate\Support\Str;
    use TCG\Voyager\Facades\Voyager;

    class ProjDimmer extends AbstractWidget
    {
        protected $config = [];

        public function run()
        {
            $count = \App\Project::count();
            $string = 'Projects';

            return view('voyager::dimmer', array_merge($this->config, [
                'icon'   => 'voyager-paw',
                'title'  => "{$count} {$string}",
                'text'   => 'Click on button below to view all YOUR projects.',
                'button' => [
                    'text' => 'Projects',
                    'link' => route('voyager.projects.index'),
                ],
                'image' => 'images/Wolf.jpg',
            ]));
        }
    }
?>