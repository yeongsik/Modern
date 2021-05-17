<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width , initial-scale=1.0">
    <title>Shop</title>
    <link rel="stylesheet" type="text/css" href="css/mainview.css">
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR&family=Raleway&display=swap" rel="stylesheet">
    <script src="http://code.jquery.com/jquery-latest.js"></script>    
    <script src="js/main.js"></script>
    <script 
    src="https://kit.fontawesome.com/78e568182c.js" crossorigin="anonymous">
    </script>
</head>
<body>
    <%@ include file="header.jsp" %>
    <div class="container">
        <section class="main-content-wrapper">
            <div class="main-content-view">
                <div class="main-content-view1 main-content-view-wrapper">
                    <div>
                        <img class="main-content-view-img" src="image/update.jpg">
                    </div> 
                </div>
                <div class="main-content-view2 main-content-view-wrapper">
                    <div class="main-content-view-desc eng" id ="main-view-btn">
                        <a class="main-content-view-text" href="">Update</a>
                    </div>
                </div>
            </div>
            <div class="main-content-items">
                <div class="main-content-items-new">
                    <div class="main-content-items-new-img">
                        
                    </div>
                    <div class="main-content-items-new-desc">

                    </div>
                </div>
                <div class="main-content-items-best">
                    <div class="main-content-items-best-img">

                    </div>
                    <div class="main-content-items-best-desc">

                    </div>
                </div>
            </div>
        </section>
    </div>
    <%@ include file="footer.jsp" %>
</body>
</html>

