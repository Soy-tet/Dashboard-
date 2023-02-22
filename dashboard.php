<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="/dist/output.css">
    <link rel="stylesheet" href="./css/style.css">
    <script src="https://kit.fontawesome.com/c90b4e63b2.js" crossorigin="anonymous"></script>
    <script src="./main.js"></script>
    <title>Dashboard</title>
</head>
<body>
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
    </div>
    <div class="container-side-bar sidebar">

        <div class="sideB">
            <ul>
                <div class="main">Favorites</div>
                <li><i class="fa-solid fa-folder"></i> All My Files</li>
                <li><i class="fa-solid fa-folder"></i> applications</li>
                <li><i class="fa-solid fa-folder"></i> Icloud Drive</li>
                <li><i class="fa-solid fa-folder"></i> Deskstop</li>
                <li><i class="fa-solid fa-folder"></i> Contents</li>
                <li><i class="fa-solid fa-folder"></i> Document</li>
            </ul>
            <ul>
                <div class="main">Favorites</div>
                <li><i class="fa-solid fa-folder"></i> All My Files</li>
                <li><i class="fa-solid fa-folder"></i> applications</li>
                <li><i class="fa-solid fa-folder"></i> Icloud Drive</li>
                <li><i class="fa-solid fa-folder"></i> Deskstop</li>
                <li><i class="fa-solid fa-folder"></i> Contents</li>
                <li><i class="fa-solid fa-folder"></i> Document</li>
            </ul>
            <ul>
                <div class="main">Favorites</div>
                <li><i class="fa-solid fa-folder"></i> All My Files</li>
                <li><i class="fa-solid fa-folder"></i> applications</li>
                <li><i class="fa-solid fa-folder"></i> Icloud Drive</li>
                <li><i class="fa-solid fa-folder"></i> Deskstop</li>
                <li><i class="fa-solid fa-folder"></i> Contents</li>
                <li><i class="fa-solid fa-folder"></i> Document</li>
            </ul>
        </div>
        <i class="fa-solid fa-arrows-left-right"></i>
    </div>

    <div class="container-right-side">
            <div class="container_view_dowmload_like_comment_share">
                <div class="container_view ">
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
            <table>
                <tr class="header-table">
                    <th>Header</th>
                    <th>Title</th>
                    <th>Description</th>
                    <th>image URL</th>
                </tr><br>
           <?php
           
           while($row = mysqli_fetch_assoc($all_data)){
            ?>  
                <tr class="tr">
                    <td><?php echo $row["Header"]; ?></td>
                    <td><?php echo $row["Title"]; ?></td>
                    <td><?php echo $row["Description"]; ?></td>
                    <td><?php echo $row["Image"]; ?></td>
                </tr>
            <?php } ?>
            </table>
        </div>
</body>
</html>