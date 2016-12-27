<?php

class Tree
{
    public static function getTree()
    {
        $sql = 'SELECT * FROM tree ORDER BY index_number, parent_id';

        $db = Database::getConnection();

        $result = $db->query($sql);

        // Получение и возврат результатов
        $tree = [];
        $i = 0;
        while ($row = $result->fetch(PDO::FETCH_ASSOC)) {
            $tree[$row['parent_id']][] = $row;
        }
        return $tree;
    }

}