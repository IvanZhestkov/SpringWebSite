<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<!-- saved from url=(0030)https://roadtothedream.com/men -->
<html lang="ru">
<head>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->

    <meta name="csrf-token" content="KFdHFv5XYp1GpgYXFufPNxBm3egZMYCbScjQEUoJ">

    <link rel="shortcut icon" type="image/x-icon" href="https://roadtothedream.com/favicon.ico">

    <title>Road to the Dream Мужчины</title>
    <meta name="keywords" content="">
    <meta name="description" content="">

    <!-- Bootstrap -->
    <link href="/resources/css/bootstrap.min.css" rel="stylesheet">

    <link href="/resources/css/font-awesome.min.css" rel="stylesheet">

    <script src="https://roadtothedream.com/vendor/html5shiv-3.7.3.min.js"></script>
    <script src="https://roadtothedream.com/vendor/respond-1.4.2.min.js"></script>

    <link rel="stylesheet" type="text/css" href="/resources/css/app.css">

    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="/resources/js/jquery-1.12.4.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="/resources/js/bootstrap.min.js"></script>

    <script src="/resources/js/jquery.color-2.1.2.min.js"></script>

    <script src="/resources/js/common.js"></script>

    <script src="/resources/js/productList.js"></script>
</head>
<body>

<jsp:include page="includes/header.jsp"/>

<!-- Header ends here -->


<div class="container">

    <div class="row">
        <div class="col-xs-12">
            <div id="breadcrumbs">
                <a class="animate_on_hover" href="/home">Главная</a> /
                Женщины
            </div>
        </div>
    </div>


    <div class="row">

        <div class="col-md-10">


            <c:forEach items="${products}" var="product">
                <div class="col-sm-4">
                    <div class="list_item">
                        <div class="image">
                            <a href="/product/${product.category}/${product.id}">
                                <img src="${product.imageUrl}"
                                     style="max-height: 325px; max-width: 300px; height: 325px;  width: 300px; ">
                            </a>
                        </div>
                        <div class="title">
                            <a class="animate_on_hover">
                                    ${product.title}</a>
                        </div>
                        <div class="cart_btn_price">
                            <span class="price">${product.price} RUB</span>
                        </div>
                    </div>
                </div>
            </c:forEach>


        </div>

    </div>


        <!-- Footer starts here -->

        <div id="footer_pusher" style="height: 236px;"></div>

        <jsp:include page="includes/footer.jsp"/>

</div>

</body>
</html>