<%@page import="net.daw.bean.UsuarioBean"%>
<%@page import="net.daw.helper.Contexto"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%
    Contexto oContexto = (Contexto) request.getAttribute("contexto");
    UsuarioBean oUserBean = (UsuarioBean) oContexto.getUserBeanSession();
%>
<!DOCTYPE html>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!-->
<html class="no-js">
    <!--<![endif]-->
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
        <title>Comprausiàs March</title>
        <meta name="description" content="">
        <meta name="viewport" content="width=device-width">
        <link rel="stylesheet" href="css/bootstrap.min.css">
        <link rel="stylesheet" href="css/bootstrap-responsive.min.css">
        <link rel="stylesheet" href="css/main.css">
    </head>
    <body>
        <!--[if lt IE 7]>
            <p class="chromeframe">You are using an outdated browser. <a href="http://browsehappy.com/">Upgrade your browser today</a> or <a href="http://www.google.com/chromeframe/?redirect=true">install Google Chrome Frame</a> to better experience this site.</p>
        <![endif]-->
        <div class="navbar navbar-inverse navbar-fixed-top">
            <div class="navbar-inner">
                <div class="container-fluid">
                    <a class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse"> 
                        <span class="icon-bar"></span> 
                        <span class="icon-bar"></span> 
                        <span class="icon-bar"></span>
                    </a> 
                    <a class="brand" href="Controller">ComprAusiàs March</a>
                    <div class="nav-collapse collapse">
                        <%
                            if (oUserBean != null) {
                        %>
                        <jsp:include page="jsp/menuSuperior.jsp" />
                        <%
                            }
                        %>
                        <p class="navbar-text pull-right">
                            <%
                                if (oUserBean != null) {
                            %>
                            Estás logueado como <%=oUserBean.getLogin()%>&nbsp;&nbsp;&nbsp;&nbsp;
                            <a class="navbar-link" href="Controller?class=usuario&method=logout">(Salir del sistema)</a>
                            <%
                            } else {
                            %>
                            <a class="navbar-link" href="Controller?class=usuario&method=login">Login</a>
                            <%
                                }
                            %>
                        </p>
                    </div>
                </div>
            </div>
        </div>
        <div class="container-fluid">
            <div class="row-fluid">
                <%
                    if (oUserBean != null) {
                        out.print("<div class=\"span2\">");
                %>
                <jsp:include page="jsp/menuLateral.jsp" />
                <%
                        out.print("</div>");
                    }
                %>
                <%
                    if (oUserBean != null) {
                        out.print("<div class=\"span10\">");
                    } else {
                        out.print("<div class=\"span12\">");
                    }
                %>
                <jsp:include page='<%=(String) oContexto.getVista()%>' />
                <%
                    out.print("</div>");
                %>    
                <div class="row-fluid">
                <div class="span12"><hr><footer><p>&copy; Rafael Aznar y los alumnos de DAW (2013)</p></footer></div>   
                </div>
            </div>
        </div>
        <script src="//ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>        
        <script src="js/vendor/modernizr-2.6.1-respond-1.1.0.min.js"></script>
        <script src="js/vendor/bootstrap-transition.js"></script>
        <script src="js/vendor/bootstrap-alert.js"></script>
        <script src="js/vendor/bootstrap-modal.js"></script>
        <script src="js/vendor/bootstrap-dropdown.js"></script>
        <script src="js/vendor/bootstrap-scrollspy.js"></script>
        <script src="js/vendor/bootstrap-tab.js"></script>
        <script src="js/vendor/bootstrap-tooltip.js"></script>
        <script src="js/vendor/bootstrap-popover.js"></script>
        <script src="js/vendor/bootstrap-button.js"></script>
        <script src="js/vendor/bootstrap-collapse.js"></script>
        <script src="js/vendor/bootstrap-carousel.js"></script>
        <script src="js/vendor/bootstrap-typeahead.js"></script>        
        <script src="js/main.js"></script>
    </body>
</html>
