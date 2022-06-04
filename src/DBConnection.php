<?php

namespace App;
use PDO;
class DBConnection{

    private static $pdo;
    public static function myDb()
    {
        if(!isset(self::$pdo))
        {
            try{
                self::$pdo = new PDO('mysql:host=localhost;dbname=imcb_website',"root","");
                self::$pdo->setAttribute(PDO::ATTR_ERRMODE,PDO::ERRMODE_EXCEPTION);
            }
            catch(\PDOException $e){
                return $e->getMessage();
            }
        }
        return self::$pdo;
    }

    public static function myQuery($sql)
    {
        return self::myDb()->prepare($sql);
    }

}





?>