<?php
session_start();
session_destroy();
session_unset('login');
header("location: login.php");
