<?php
            $connection = mysqli_connect("localhost","root","","Dashboard");
            if(!$connection){
                die("connection death");
            }
            $all_data = $connection->query("SELECT * FROM Content;");
            // $all_data2 = $connection->query("SELECT * FROM `Profile`;");
            $connection_lesson = mysqli_connect("localhost","root","","Lesson");
            if(!$connection_lesson){
                die("connection death");
            }
            $connection_lesson2 = mysqli_connect("localhost","root","","Dashboard");
            if(!$connection_lesson2){
                die("connection death");
            }
            $result = mysqli_query($connection_lesson,"SELECT * FROM Crash_course;");
            $KK = mysqli_query($connection_lesson2,"SELECT * FROM `Profile`;");
            $count = mysqli_query($connection_lesson,"SELECT COUNT(*) FROM Crash_course;");
            $count_id = mysqli_query($connection_lesson,"SELECT id FROM Crash_course;");
            $assoc = mysqli_fetch_assoc($count);
            $assoc_id = mysqli_fetch_assoc($count_id);
            // include_once('./framework.js');
            if(!isset($_COOKIE['Username'])){
                header("Location: ./login.php");
                exit();
            }
    ?>