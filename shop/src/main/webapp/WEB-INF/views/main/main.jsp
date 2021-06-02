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
    <script src="./js/main.js"></script>
    <script 
    src="https://kit.fontawesome.com/78e568182c.js" crossorigin="anonymous">
    </script>
</head>
<body>
    <%@ include file="../main/header.jsp"%>
      <div class="container">
        <section class="main-content-wrapper">
            <div class="main-content-view">
                <div class="main-content-view1 main-content-view-wrapper" onclick="location.href='notice.shop'">
                    <div class="main-content-view-img-wrapper">
                        <img class="main-content-view-img" src="image/update.jpg">
                    </div>
                    <div class="main-content-view-desc eng">
                        <div class="main-content-view-desc-subject">
                            Notice
                        </div>
                        <div class="main-content-view-desc-detail">
                            Notice-detail is kwelfweoiks
                        </div>
                    </div>
                </div>  
                <div class="main-content-view2 main-content-view-wrapper">
                    <div class="main-content-view2-wrapper">
                        <div class="main-content-newitem-subject eng">
                            New Item
                        </div>
                    </div>
                </div>
            </div>
            <div class="main-content-view">
                <div class="main-content-view2 main-content-view-wrapper">
                    <div class="main-content-view2-wrapper">
                        <div class="main-content-newitem-subject eng">
                            Best Item
                        </div>
                    </div>
                </div>
                <div class="main-content-view1 main-content-view-wrapper" onclick="location.href='about.shop'">
                    <div class="main-content-view-img-wrapper">
                        <img class="main-content-view-img" src="image/update.jpg">
                    </div>
                    <div class="main-content-view-desc desc2 eng">
                        <div class="main-content-view-desc-subject">
                            About
                        </div>
                        <div class="main-content-view-desc-detail">
                            About detail
                        </div>
                    </div>
                </div>  
            </div>
        </section>
    </div>
    <%@ include file="../main/footer.jsp" %>
</body>
</html>

