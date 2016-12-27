<?php

class SiteController
{
    public function actionIndex()
    {
        $tree = Tree::getTree();
        $mass = Tree_Builder::buildTree($tree);
        //echo $mass; die;

        require_once ROOT . '/views/site/index.php';
        return true;
    }

    public function actionEditor()
    {


        require_once ROOT . '/views/site/editor.php';
        return true;
    }

    public function actionError()
    {
        require_once ROOT . '/views/site/error.php';
        return true;
    }
}