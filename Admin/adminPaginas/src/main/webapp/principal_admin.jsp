<%@ page import="Beans.Juegos" %>
<%@ page import="Beans.JuegoPostAdmin" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:useBean type="java.util.ArrayList<Beans.JuegoPostAdmin>" scope="request" id="listaJuegosPosteados"/>
<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=0.75">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@100;200;300;400;500;600;700;800;900&display=swap"
          rel="stylesheet">

    <title>Ergo Proxy</title>

    <!-- Bootstrap core CSS -->
    <link href="<%=request.getContextPath()%>/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">


    <!-- Additional CSS Files -->
    <link rel="stylesheet" href="<%=request.getContextPath()%>/assets/css/fontawesome.css">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/assets/css/estilo_admin.css">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/assets/css/card_style.css">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/assets/css/owl.css">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/assets/css/animate.css">
    <link rel="stylesheet" href="https://unpkg.com/swiper@7/swiper-bundle.min.css" />
    <!--

  TemplateMo 589 lugx gaming

  https://templatemo.com/tm-589-lugx-gaming

  -->
</head>

<body>

<!-- ***** Preloader Start ***** -->
<div id="js-preloader" class="js-preloader">
    <div class="preloader-inner">
        <span class="dot"></span>
        <div class="dots">
            <span></span>
            <span></span>
            <span></span>
        </div>
    </div>
</div>
<!-- ***** Preloader End ***** -->

<!-- ***** Header Area Start ***** -->
<header class="header-area header-sticky">
    <div class="container">
        <div class="row">
            <div class="col-12">
                <nav class="main-nav">
                    <!-- ***** Logo Start ***** -->
                    <a href="index.html" class="logo">
                        <img src="assets/images/logo.png" alt="" style="width: 65px;">
                    </a>
                    <!-- ***** Logo End ***** -->
                    <!-- ***** Menu Start ***** -->
                    <ul class="nav">
                        <li><a href="principal_admin" class="active">Lista de juegos</a></li>
                        <li><a href="propuestos_vendidos.html">Solicitudes</a></li>
                        <li><a href="propuestos_comprados.html">Propuestas</a></li>
                        <li><a href="reservados_page.html">Reservas</a></li>
                        <!-- <li><a href="contact.html">Contacto</a></li>-->
                        <li><a href="login.html">Inicia sesión</a></li>
                        <li><a href="perfil_admin_page.html">Perfil<img src="assets/images/profile-header.jpg" style="border-radius: 50%;
                margin-left: 5px; max-width: 30%;" alt=""></a></li>
                    </ul>
                    <a class='menu-trigger'>
                        <span>Menu</span>
                    </a>
                    <!-- ***** Menu End ***** -->
                </nav>
            </div>
        </div>
    </div>
</header>
<!-- ***** Header Area End ***** -->

<div class="main-banner">
    <div class="container">
        <div class="row">
            <div class="col-lg-6 align-self-center">
                <div class="caption header-text">
                    <h6>Bienvenido a Ergo Proxy, Administrador</h6>
                    <h2> EL MEJOR GAMECENTER!</h2>
                    <p>En esta página encontrarás todo lo necesesario para poder administrar los juegos correctamente.</p>
                    <div class="search-input">
                        <form id="search" action="#">
                            <input type="text" placeholder="¿Buscas algo?" id='searchText' name="searchKeyword"
                                   onkeypress="handle" />
                            <button role="button">Buscar</button>
                        </form>
                    </div>
                </div>
            </div>
            <div class="col-lg-4 offset-lg-2">
                <div class="right-image">
                    <img src="assets/images/banner-image.jpg" alt="">
                    <span class="price">$22</span>
                    <span class="offer">-90%</span>
                </div>
            </div>
        </div>
    </div>
</div>

<div class="section trending">
    <div class="container">
        <div class="row">

            <div class="col-lg-9">
                <div class="section-heading">
                    <h6>Disponibles</h6>
                    <h2>Juegos en stock:</h2>
                    <hr size="2px" color="gray"  style="height: 1px;"/>
                </div>
            </div>

            <div class="col-lg-3">
                <div class="main-button">
                    <a href="tendencia_juegos_page.html">Ver todos</a>
                </div>
            </div>


            <div class="col-lg-3 col-md-6">
                <div class="item">
                    <div class="thumb">
                        <div style="height: 176px">
                            <button type="button" onclick="window.location.href = <%=request.getContextPath()%>/'anadir_juegos_page.html'" class="btn btn-outline-secondary" style="width: 100%; height: 100%; border-radius: 25px">
                                <span style="font-size: 100px">+</span>
                            </button>
                        </div>
                    </div>
                    <div class="down-content">
                        <span class="category">Si buscas...</span>
                        <h5>Añadir juego</h5>
                        <p>Haz click en (+) para añadir nuevo juego</p>
                    </div>
                </div>
            </div>

            <%
                for (JuegoPostAdmin juegoPosteado : listaJuegosPosteados) {
            %>
            <div class="col-lg-3 col-md-6">
                <div class="item">
                    <div class="thumb">
                        <a href="<%=request.getContextPath()%>/info_juego.html"><img src="<%=juegoPosteado.getImagen()%>" alt=""></a>
                        <span class="price"><em><%=juegoPosteado.getPrecio_unidad()%></em>$20</span>
                    </div>
                    <div class="down-content">
                        <span class="category"><%=juegoPosteado.getGenero()%></span>
                        <h5><%=juegoPosteado.getNombre()%></h5>
                        <p ><em>Un juego buenísimo!</em></p>
                        <a href="<%=request.getContextPath()%>/info_juego.html">
                            <span  onclick="return confirmation_del()">×</span>
                        </a>
                        <button onclick="window.location.href = <%=request.getContextPath()%>/'info_juego.html'" role="button" class="btn btn-primary">Más detalles</button>
                    </div>
                </div>
            </div>

            <div class="col-lg-3 col-md-6">
                <div class="item">
                    <div class="thumb">
                        <a href="<%=request.getContextPath()%>/info_juego.html"><img src="<%=juegoPosteado.getImagen()%>" alt=""></a>
                        <span class="price">$44</span>
                    </div>
                    <div class="down-content">
                        <span class="category">Action</span>
                        <h5><%=juegoPosteado.getNombre()%></h5>
                        <p ><em>Un juego buenísimo!</em></p>
                        <a href="<%=request.getContextPath()%>/info_juego.html">
                            <span  onclick="return confirmation_del()">×</span>
                        </a>
                        <button onclick="window.location.href = <%=request.getContextPath()%>/'info_juego.html'" role="button" class="btn btn-primary" >Más detalles</button>
                    </div>
                </div>
            </div>
            <%
                }
            %>
        </div>
        <div class="row" style="justify-content: center">
            <button onclick="window.location.href = 'anadir_ofertas.html'" class="btn btn-success btn-lg sale-button" style="width: 15%; border-radius: 40px">Añadir Oferta</button>
        </div>
    </div>
</div>

<div class="section trending" style="background-color: lightgray; border-radius: 150px; padding: 90px 0 70px 0">
    <div class="container">
        <div class="row">

            <div class="col-lg-9">
                <div class="section-heading">
                    <h6>Fuera de Stock</h6>
                    <h2>Todos los juegos fuera de stock:</h2>
                    <hr size="2px" color="gray"  style="height: 1px;"/>
                </div>
            </div>

            <div class="col-lg-3">
            </div>

            <div class="col-lg-3 col-md-6">
                <div class="item outstock">
                    <div class="thumb">
                        <a href="info_juego.html"><img src="assets/images/trending-01.jpg" alt=""></a>
                        <span class="price"><em>$28</em>$20</span>
                    </div>
                    <div class="down-content">
                        <span class="category">Action</span>
                        <h5>Assasin Creed</h5>
                        <p ><em>No disponible ahora</em></p>
                        <a href="info_juego.html">
                            <span  onclick="return confirmation_del()">×</span>
                        </a>
                        <button onclick="window.location.href = 'info_juego.html'" role="button" class="btn btn-primary" href="listajuego.html">Más detalles</button>
                    </div>
                </div>
            </div>

            <div class="col-lg-3 col-md-6">
                <div class="item outstock">
                    <div class="thumb">
                        <a href="info_juego.html"><img src="assets/images/trending-02.jpg" alt=""></a>
                        <span class="price">$44</span>
                    </div>
                    <div class="down-content">
                        <span class="category">Action</span>
                        <h5>Assasin Creed</h5>
                        <p ><em>No disponible ahora</em></p>
                        <a href="info_juego.html">
                            <span  onclick="return confirmation_del()">×</span>
                        </a>
                        <button onclick="window.location.href = 'info_juego.html'" role="button" class="btn btn-primary" >Más detalles</button>
                    </div>
                </div>
            </div>

            <div class="col-lg-3 col-md-6">
                <div class="item outstock">
                    <div class="thumb">
                        <a href="info_juego.html"><img src="assets/images/trending-03.jpg" alt=""></a>
                        <span class="price"><em>$64</em>$44</span>
                    </div>
                    <div class="down-content">
                        <span class="category">Action</span>
                        <h5>Assasin Creed</h5>
                        <p ><em>No disponible ahora</em></p>
                        <a href="info_juego.html">
                            <span  onclick="return confirmation_del()">×</span>
                        </a>
                        <button onclick="window.location.href = 'info_juego.html'" role="button" class="btn btn-primary">Más detalles</button>
                    </div>
                </div>
            </div>

            <div class="col-lg-3 col-md-6">
                <div class="item outstock">
                    <div class="thumb">
                        <a href="info_juego.html"><img src="assets/images/trending-04.jpg" alt=""></a>
                        <span class="price">$32</span>
                    </div>
                    <div class="down-content">
                        <span class="category">Action</span>
                        <h5>Assasin Creed</h5>
                        <p ><em>No disponible ahora</em></p>
                        <a href="info_juego.html">
                            <span  onclick="return confirmation_del()">×</span>
                        </a>
                        <button onclick="window.location.href = 'info_juego.html'" role="button" class="btn btn-primary ">Más detalles</button>
                    </div>
                </div>
            </div>

            <div class="col-lg-3 col-md-6">
                <div class="item outstock">
                    <div class="thumb">
                        <a href="info_juego.html"><img src="assets/images/trending-01.jpg" alt=""></a>
                        <span class="price"><em>$28</em>$20</span>
                    </div>
                    <div class="down-content">
                        <span class="category">Action</span>
                        <h5>Assasin Creed</h5>
                        <p ><em>No disponible ahora</em></p>
                        <a href="info_juego.html">
                            <span  onclick="return confirmation_del()">×</span>
                        </a>
                        <button onclick="window.location.href = 'info_juego.html'" role="button" class="btn btn-primary" href="listajuego.html">Más detalles</button>
                    </div>
                </div>
            </div>

            <div class="col-lg-3 col-md-6">
                <div class="item outstock">
                    <div class="thumb">
                        <a href="info_juego.html"><img src="assets/images/trending-02.jpg" alt=""></a>
                        <span class="price">$44</span>
                    </div>
                    <div class="down-content">
                        <span class="category">Action</span>
                        <h5>Assasin Creed</h5>
                        <p ><em>No disponible ahora</em></p>
                        <a href="info_juego.html">
                            <span  onclick="return confirmation_del()">×</span>
                        </a>
                        <button onclick="window.location.href = 'info_juego.html'" role="button" class="btn btn-primary" >Más detalles</button>
                    </div>
                </div>
            </div>

            <div class="col-lg-3 col-md-6">
                <div class="item outstock">
                    <div class="thumb">
                        <a href="info_juego.html"><img src="assets/images/trending-03.jpg" alt=""></a>
                        <span class="price"><em>$64</em>$44</span>
                    </div>
                    <div class="down-content">
                        <span class="category">Action</span>
                        <h5>Assasin Creed</h5>
                        <p ><em>No disponible ahora</em></p>
                        <a href="info_juego.html">
                            <span  onclick="return confirmation_del()">×</span>
                        </a>
                        <button onclick="window.location.href = 'info_juego.html'" role="button" class="btn btn-primary">Más detalles</button>
                    </div>
                </div>
            </div>

            <div class="col-lg-3 col-md-6">
                <div class="item outstock">
                    <div class="thumb">
                        <a href="info_juego.html"><img src="assets/images/trending-04.jpg" alt=""></a>
                        <span class="price">$32</span>
                    </div>
                    <div class="down-content">
                        <span class="category">Action</span>
                        <h5>Assasin Creed</h5>
                        <p ><em>No disponible ahora</em></p>
                        <a href="info_juego.html">
                            <span onclick="return confirmation_del()">×</span>
                        </a>
                        <button onclick="window.location.href = 'info_juego.html'" role="button" class="btn btn-primary ">Más detalles</button>
                    </div>
                </div>
            </div>

        </div>
    </div>
</div>

<div class="section most-played">
    <div class="container">
        <div class="row">
            <div class="col-lg-6">
                <div class="section-heading">
                    <h6>Tendencias</h6>
                    <h2>Juegos más comprados</h2>
                </div>
            </div>
            <div class="col-lg-6">
                <div class="main-button">
                    <a href="tendencia_juegos_page.html">Ver todos</a>
                </div>
            </div>
            <div class="col-lg-2 col-md-6 col-sm-6">
                <div class="item">
                    <div class="thumb">
                        <a href="#"><img src="assets/images/top-game-01.jpg" alt=""></a>
                    </div>
                    <div class="down-content">
                        <span class="category">Adventure</span>
                        <h4>Assasin Creed</h4>
                        <a href="info_juego.html">Explore</a>
                    </div>
                </div>
            </div>
            <div class="col-lg-2 col-md-6 col-sm-6">
                <div class="item">
                    <div class="thumb">
                        <a href="info_juego.html"><img src="assets/images/top-game-02.jpg" alt=""></a>
                    </div>
                    <div class="down-content">
                        <span class="category">Adventure</span>
                        <h4>Assasin Creed</h4>
                        <a href="#">Explore</a>
                    </div>
                </div>
            </div>
            <div class="col-lg-2 col-md-6 col-sm-6">
                <div class="item">
                    <div class="thumb">
                        <a href="#"><img src="assets/images/top-game-03.jpg" alt=""></a>
                    </div>
                    <div class="down-content">
                        <span class="category">Adventure</span>
                        <h4>Assasin Creed</h4>
                        <a href="info_juego.html">Explore</a>
                    </div>
                </div>
            </div>
            <div class="col-lg-2 col-md-6 col-sm-6">
                <div class="item">
                    <div class="thumb">
                        <a href="info_juego.html"><img src="assets/images/top-game-04.jpg" alt=""></a>
                    </div>
                    <div class="down-content">
                        <span class="category">Adventure</span>
                        <h4>Assasin Creed</h4>
                        <a href="info_juego.html">Explore</a>
                    </div>
                </div>
            </div>
            <div class="col-lg-2 col-md-6 col-sm-6">
                <div class="item">
                    <div class="thumb">
                        <a href="info_juego.html"><img src="assets/images/top-game-05.jpg" alt=""></a>
                    </div>
                    <div class="down-content">
                        <span class="category">Adventure</span>
                        <h4>Assasin Creed</h4>
                        <a href="info_juego.html">Explore</a>
                    </div>
                </div>
            </div>
            <div class="col-lg-2 col-md-6 col-sm-6">
                <div class="item">
                    <div class="thumb">
                        <a href="info_juego.html"><img src="assets/images/top-game-06.jpg" alt=""></a>
                    </div>
                    <div class="down-content">
                        <span class="category">Adventure</span>
                        <h4>Assasin Creed</h4>
                        <a href="info_juego.html">Explore</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<div class="section categories">
    <div class="container">
        <div class="row">
            <div class="col-lg-12 text-center">
                <div class="section-heading">
                    <h6>Categorías</h6>
                    <h2>Top Categorías</h2>
                </div>
            </div>
            <div class="col-lg col-sm-6 col-xs-12">
                <div class="item">
                    <h4>Action</h4>
                    <div class="thumb">
                        <a href="#"><img src="assets/images/categories-01.jpg" alt=""></a>
                    </div>
                </div>
            </div>
            <div class="col-lg col-sm-6 col-xs-12">
                <div class="item">
                    <h4>Action</h4>
                    <div class="thumb">
                        <a href="#"><img src="assets/images/categories-05.jpg" alt=""></a>
                    </div>
                </div>
            </div>
            <div class="col-lg col-sm-6 col-xs-12">
                <div class="item">
                    <h4>Action</h4>
                    <div class="thumb">
                        <a href="#"><img src="assets/images/categories-03.jpg" alt=""></a>
                    </div>
                </div>
            </div>
            <div class="col-lg col-sm-6 col-xs-12">
                <div class="item">
                    <h4>Action</h4>
                    <div class="thumb">
                        <a href="#"><img src="assets/images/categories-04.jpg" alt=""></a>
                    </div>
                </div>
            </div>
            <div class="col-lg col-sm-6 col-xs-12">
                <div class="item">
                    <h4>Action</h4>
                    <div class="thumb">
                        <a href="#"><img src="assets/images/categories-05.jpg" alt=""></a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<div class="section cta">
    <div class="container">
        <div class="row">
            <div class="col-lg-5">
                <div class="shop">
                    <div class="row">
                        <div class="col-lg-12">
                            <div class="section-heading">
                                <h6>Nosotros</h6>
                                <h2>Compra y obtén los mejores <em>precios</em> para ti!</h2>
                            </div>
                            <p>No dejes pasar la oportidad. Tenemos las mejores ofertas todos los meses en los mejores juegos y
                                sagas.</p>
                            <div class="main-button">
                                <a href="listajuego.html">Compra ahora</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-5 offset-lg-2 align-self-end">
                <div class="subscribe">
                    <div class="row">
                        <div class="col-lg-12">
                            <div class="section-heading">
                                <h6>NEWSLETTER</h6>
                                <h2>Obtén S/.50 de descuento<em> Suscríbete</em> al Newsletter!</h2>
                            </div>
                            <div class="search-input">
                                <form id="subscribe" action="#">
                                    <input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp"
                                           placeholder="Tu correo...">
                                    <button type="submit">Subscríbete ahora</button>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<footer>
    <div class="container">
        <div class="col-lg-12">
            <p>Copyright © 2023 ERGO PROXY Gaming Company. Todos los derechos reservados. Diseñado para el cursos de
                Ingeniería web PUCP.</p>
        </div>
    </div>
</footer>

<!-- Scripts -->
<!-- Bootstrap core JavaScript -->
<script src="<%=request.getContextPath()%>/vendor/jquery/jquery.min.js"></script>
<script src="<%=request.getContextPath()%>/vendor/bootstrap/js/bootstrap.min.js"></script>
<script src="<%=request.getContextPath()%>/assets/js/isotope.min.js"></script>
<script src="<%=request.getContextPath()%>/assets/js/owl-carousel.js"></script>
<script src="<%=request.getContextPath()%>/assets/js/counter.js"></script>
<script src="<%=request.getContextPath()%>/assets/js/custom.js"></script>
<script>
    function confirmation_del(){
        var respuesta=confirm("¿Está seguro de querer quitar el juego?");
        if (respuesta==true) {
            return true;
        } else {
            return false;
        }
    }
</script>


</body>

</html>