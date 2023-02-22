<?php
            $connection = mysqli_connect("localhost","root","","Dashboard");
            if(!$connection){
                die("connection death");
            }
            $all_data = $connection->query("SELECT * FROM Content;");
            $connection_lesson = mysqli_connect("localhost","root","","Lesson");
            if(!$connection_lesson){
                die("connection death");
            }
            $result = mysqli_query($connection_lesson,"SELECT * FROM Crash_course;");
            $count = mysqli_query($connection_lesson,"SELECT COUNT(*) FROM Crash_course;");
            $count_id = mysqli_query($connection_lesson,"SELECT id FROM Crash_course;");
            $assoc = mysqli_fetch_assoc($count);
            $assoc_id = mysqli_fetch_assoc($count_id);
            // include_once('./framework.js');
            if(!isset($_COOKIE['username'])){
                header("Location: ./login.php");
                exit();
            }
            $connection_lesson2 = mysqli_connect("localhost","root","","Dashboard");
            if(!$connection_lesson2){
                die("connection death");
            }
            $KK = mysqli_query($connection_lesson2,"SELECT * FROM `Profile`;");
    ?>
<!DOCTYPE html>
<html lang="en">
    <head>
        <!-- <script src="./framework.js"></script> -->
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="/dist/output.css">
        <script src="https://kit.fontawesome.com/c90b4e63b2.js" crossorigin="anonymous"></script>
        <title>Dashboard</title>
        <link rel="stylesheet" href="./css/style.css">

    </head>
    <body>
    <div class="container_profile" id="profile">
        <ul>
            <?php
            while($rowP = mysqli_fetch_assoc($KK)){
             ?>  
            <a href="./LessonAll.php"><?php echo $rowP["header"]; ?></a>
            <?php } ?>
        </ul>
    </div>
    <!-- //TODO: Navbar  -->
    <div class="navbar drop-shadow-md">
            <div class="template">
                <div class="type-view2"><i class="fa-solid fa-chevron-left"></i></div>
                <div class="type-view2"><i class="fa-solid fa-chevron-right"></i></div>
                <i class="fa-solid fa-expand"></i>
                <div class="type-view drop-shadow-sm"><i class="fa-solid fa-bars"></i></div>
                <div class="type-view drop-shadow-sm"><i class="fa-solid fa-bars"></i></div>
                <div class="type-view drop-shadow-sm"><i class="fa-solid fa-bars"></i></div>
                <div class="type-view drop-shadow-sm"><i class="fa-solid fa-filter"></i></div>
            </div>
            <div class="search">
                <input type="text" placeholder="Search" id="search">
                <i class="fa-solid fa-magnifying-glass"></i>
            </div>
            <script>
                var point = false;
                function profile(){
                    point = !point;
                    if(point==true){
                        var pro = document.getElementById('profile').style.display="block";
                        return pro;
                    }
                    else if(point==false){
                        var pro = document.getElementById('profile').style.display="none";
                        return pro;
                    }
                    else{
                        var pro = document.getElementById('profile').style.display="none";
                        return pro;
                    }
                }
            </script>
            <div onclick="profile()" class="container_profile_icon"><img src="./IMG/bVBtrAkT-wallha.com.png" alt=""></div>
    </div>
    <!-- TODO: -->
    <div class="container-side-bar sidebar">
        <div class="sideB">
            <form class="search1" action="./single.php">
                <input type="text" placeholder="Search..." id="search">
                <input type="submit" name="" value="Search" id="search1">
            </form>
            <ul>
                <div class="main">Favorites</div>
                <li><i class="fa-solid fa-folder" ></i> All My Files</li>
                <li><i class="fa-solid fa-folder"></i> applications</li>
                <li><i class="fa-solid fa-folder"></i> Icloud Drive</li>
                <li><i class="fa-solid fa-folder"></i> Deskstop</li>
                <li><i class="fa-solid fa-folder"></i> Contents</li>
                <li><i class="fa-solid fa-folder"></i> Document</li>
            </ul>
            <ul>
                <div class="main">All Lesson</div>
                <?php
               while($rowq = mysqli_fetch_assoc($result)){
                ?>  
            <li>
                <form method="post" action="./LessonAll.php">
                    <i class="fa-solid fa-folder"></i> 
                    <input type="submit" value="<?php echo $rowq["Title"]; ?>">
                </form>
            </li>
                <?php } ?>
            </ul>
        </div>
        <i class="fa-solid fa-arrows-left-right"></i>
    </div>
<!-- TODO: -->
    <div class="container-right-side">
                        <div class="container_analytic">
                            <div class="container_logo_text">
                                <i class="fa-sharp fa-solid fa-chart-line fa-2x"></i>
                                <div class="text01">
                                    <div class="text">Analytics Dashboard</div>
                                    <div class="text02">This is an example dashboard created using build-in elements and components.</div>
                                </div>
                            </div>
                            <div class="container_new_star">
                                <i class="fa-solid fa-bell kondeng"></i>
                                <form method="post" action="./Insert_lesson.php">
                                    <input id="new" type="submit" value="New Lesson">
                                </form>
                                <form method="post" action="./Insert_lesson.php">
                                    <input id="new" type="submit" value="New Product">
                                </form>
                                <!-- <a href="#"><i class="fa-regular fa-plus"></i></a> -->
                            </div>
                        </div>
            <div class="container_view_dowmload_like_comment_share">
                <div class="container_view ">
                    <div class="displayBlock01">
                        <div class="container_total">
                            <div class="total"><?php echo implode("",$assoc) ?>+</div>
                            <div class="total_text">all data lesson earning</div>
                        </div>
                        <i class="fa-solid fa-chart-simple fa-2x"></i>
                   </div>
                   <div class="container_update">
                    <i class="fa-sharp fa-solid fa-business-time"></i>
                        <div class="text">last update 24:50s</div>
                   </div>
                </div>
                <div class="container_view">
                    <div class="displayBlock01">
                        <div class="container_total">
                            <div class="total">3019426+</div>
                            <div class="total_text">all views earning</div>
                        </div>
                        <i class="fa-solid fa-chart-simple fa-2x"></i>
                   </div>
                   <div class="container_update">
                    <i class="fa-sharp fa-solid fa-business-time"></i>
                        <div class="text">last update 24:50s</div>
                   </div>
                </div>
                <div class="container_view">
                    <div class="displayBlock01">
                        <div class="container_total">
                            <div class="total">3019426+</div>
                            <div class="total_text">all views earning</div>
                        </div>
                        <i class="fa-solid fa-chart-simple fa-2x"></i>
                   </div>
                   <div class="container_update">
                    <i class="fa-sharp fa-solid fa-business-time"></i>
                        <div class="text">last update 24:50s</div>
                   </div>
                </div>
                <div class="container_view">
                    <div class="displayBlock01">
                        <div class="container_total">
                            <div class="total">3019426+</div>
                            <div class="total_text">all views earning</div>
                        </div>
                        <i class="fa-solid fa-chart-simple fa-2x"></i>
                   </div>
                   <div class="container_update">
                    <i class="fa-sharp fa-solid fa-business-time"></i>
                        <div class="text">last update 24:50s</div>
                   </div>
                </div>
            </div>
            <div class="table-wrapper">
                <table>
                    <tr class="header-table">
                        <th><?php echo implode("",$assoc_id) ?></th>
                        <th>Title</th>
                        <th>Description</th>
                        <th>image URL</th>
                        <th class="remove">Edit</th>
                        <th class="remove">X</th>
                    </tr><br>
               <?php
               while($row = mysqli_fetch_assoc($all_data)){
                ?>  
                    <tr class="tr">
                        <td><?php echo $row["Header"]; ?></td>
                        <td><?php echo $row["Title"]; ?></td>
                        <td><?php echo $row["Description"]; ?></td>
                        <td><?php echo $row["Image"]; ?></td>
                        <td class="remove"><i class="fa-sharp fa-solid fa-pen-to-square"></i></td>
                        <td class="remove"><i class="fa-solid fa-trash"></i></td>
                    </tr>
                <?php } ?>
                </table>
            </div>
           
        </div>
</body>
</html>