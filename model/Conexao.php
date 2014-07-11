<?php

class Conexao{

    public static $instance;
 
    public static function getConexao() {
        if (!isset(self::$instance)) {
            self::$instance = new PDO('mysql:host=tunnel.pagodabox.com:3306;dbname=gifts', 'shaquana', '6wenvYEI');
            self::$instance->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
            
        } return self::$instance;
    }
   
}
