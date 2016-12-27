<?php


class Tree_Builder
{
    public static function buildTree($trees, $parent_id = 0)
    {
        $members = [
            'can_1' => 1 << 0,
            'can_2' => 1 << 1,
            'can_3' => 1 << 2,
        ];

        if(is_array($trees) && isset($trees[$parent_id])){

            $tr = '<ul>';

            foreach($trees[$parent_id] as $tree)
            {
                foreach ($members as $memb)
                {
                    if ($memb == $tree['member'])
                    {
                        $tr .='<li';
                        if ($tree['type'] == 1)
                        {
                            $tr .= ' class="separator" ';
                        }
                        $tr .='><a href="#">'.$tree['name'].'</a>';
                        $tr .= self::buildTree($trees, $tree['id']);
                        $tr .= '</li>';
                    }
                }
            }
            $tr .= '</ul>';
        }
        else return null;
        return $tr;
    }

}