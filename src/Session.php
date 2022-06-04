<?php

namespace App;

class Session
{

    public static function init()
    {

        if (version_compare(phpversion(), '5.4.0', '<')) {
            if (session_id == '') {
                session_start();
            }
        } else {
            if (session_status() == PHP_SESSION_NONE) {
                session_start();
            }
        }
    }
    public static function set($key, $val)
    {
        $_SESSION[$key] = $val;
    }
    public static function get($key)
    {
        if (isset($_SESSION[$key])) {
            return $_SESSION[$key];
        } else {
            return false;
        }
    }
    public static function unSetSession()
    {
        session_unset();
    }

    public static function UnsetKeySession($key)
    {
        if (isset($_SESSION[$key])) {
            self::set($key, "");
            return false;
        }
    }
    public static function Destroy()
    {
        session_destroy();
        session_unset();
    }
    public static function checkLoginSession()
    {
        if (self::get('login') == false) {
            self::Destroy();
            header('Location:login.php');
        }
    }
    public static function CustomerCheckLoginSession()
    {
        if (self::get('customer_login') == false) {
            self::Destroy();
            header('Location: ');
        }
    }
}
