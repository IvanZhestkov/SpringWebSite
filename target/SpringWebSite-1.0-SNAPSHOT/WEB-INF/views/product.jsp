<%--
  Created by IntelliJ IDEA.
  User: User
  Date: 09.05.2018
  Time: 12:04
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<!-- saved from url=(0081)https://roadtothedream.com/men/hoodies/road-to-the-dream-v-shape-logo-hoodie-gray -->
<html lang="ru">
<head>

    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->

    <meta name="csrf-token" content="AApvBcXRcTOhIan9BwxVdGGT72acko441dX4rXJg">

    <link rel="shortcut icon" type="image/x-icon" href="https://roadtothedream.com/favicon.ico">

    <title>${product.title}</title>
    <meta name="keywords" content="">
    <meta name="description" content="">

    <!-- Bootstrap -->
    <link href="/resources/css/bootstrap.min.css" rel="stylesheet">

    <link href="/resources/css/font-awesome.min.css" rel="stylesheet">

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="https://roadtothedream.com/vendor/html5shiv-3.7.3.min.js"></script>
    <script src="https://roadtothedream.com/vendor/respond-1.4.2.min.js"></script>
    <![endif]-->

    <link rel="stylesheet" type="text/css" href="/resources/css/app.css">

    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="/resources/js/jquery-1.12.4.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="/resources/js/bootstrap.min.js"></script>

    <script src="/resources/js/jquery.color-2.1.2.min.js"></script>

    <script src="/resources/js/common.js"></script>

    <script src="/resources/js/jquery.zoom.min.js"></script>
    <script src="/resources/js/product.js"></script>
</head>
<body class="">

<jsp:include page="includes/header.jsp"/>

<!-- Header ends here -->


<div class="container">

    <div class="row">
        <div class="col-xs-12">
            <div id="breadcrumbs">
                <a class="animate_on_hover" href="/home">Главная</a> /
            </div>
        </div>
    </div>


    <div class="row">
        <div class="col-xs-12">
            <div class="alert alert-info gift_alert" role="alert">При покупке 3-х вещей или более, ты получаешь <a
                    class="underline">Блокнот
                Road to the Dream</a> в подарок!
            </div>

        </div>
    </div>

    <div class="row">
        <div class="col-sm-12 col-md-7">

            <div class="row" id="product_photos_row">

                <img src="${product.imageUrl}"
                     style="max-height: 325px; max-width: 300px; height: 380px;  width: 345px; margin-left: 110px; ">
            </div>

        </div>


        <div class="col-sm-12 col-md-5" id="product_data">
            <div class="row">
                <div class="col-xs-12">
                    <h1 id="product_title">
                        ${product.title}
                    </h1>
                </div>
            </div>

            <div class="row">
                <div class="col-xs-12">
                    <div id="product_price">
                        ${product.price} RUB
                    </div>
                </div>
            </div>

            <input type="hidden" id="product_id" value="38">


            <div class="row">

                <div class="col-xs-6">
                    <div class="product_attribute">
                        <div class="title">Количество</div>
                        <div class="input">

                            <div class="input_number">
                                <div class="minus"><span class="glyphicon glyphicon-minus animate_on_hover"
                                                         aria-hidden="true" style="color: rgb(51, 51, 51);"></span>
                                </div>
                                <div class="text" data-min="1" data-max="3">1</div>
                                <div class="plus"><span class="glyphicon glyphicon-plus animate_on_hover"
                                                        aria-hidden="true" style="color: rgb(51, 51, 51);"></span></div>

                                <input class="value" type="hidden" id="quantity" value="1">
                            </div>
                        </div>
                    </div>
                </div>
            </div>


            <div class="row">
                <a href="/user/toCart/${product.id}"><input class="btn btn-dark" style="width: 100%;"
                                                            type="submit"
                                                            value="Добавить">
                </a>
            </div>


            <%--<div class="row">
                <div class="col-xs-12">
                    <div id="product_description">
                        <div class="title">Описание</div>
                        <div class="text">
                            <p>Худи Road to the Dream Logo V-Shape незаменима, когда погода становится прохладной!
                                Вдохнови окружающих следовать своим мечтам надевая худи с Logo Road to the Dream и
                                подтверждая свои амбиции тяжелой работой!</p>

                            <ul>
                                <li>Эластичная, приятная ткань;</li>
                                <li>Рукава покроя реглан не сковывают движений;</li>
                                <li>Карман «кенгуру»;</li>
                            </ul>

                            <table class="table table-striped">
                                <tbody>
                                <tr>
                                    <td>Хлопок</td>
                                    <td>90%</td>
                                </tr>
                                <tr>
                                    <td>Эластан</td>
                                    <td>10%</td>
                                </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>--%>

        </div>
    </div>
</div>

<!-- Footer starts here -->

<div id="footer_pusher" style="height: 236px;"></div>

<jsp:include page="includes/footer.jsp"/>

</body>
</html>
