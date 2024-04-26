<?php

abstract class Model
{
    protected static $bdd;

    /**
     * Connection to mysql bd function
     * @return void
     */
    private static function setBdd()
    {
        self::$bdd = new PDO('mysql:host=localhost;dbname=blog','root','');
        //we use PDO constants to handle errors
        self::$bdd->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_WARNING);
    }

    /**
     * Default connection to db
     * @return void
     */
    protected function getBdd()
    {
        if (self::$bdd == null) {
            self::setBdd();
            return self::$bdd;
        }
    }
}