<%@page import="net.daw.helper.Contexto"%>
<% Contexto oContexto = (Contexto) request.getAttribute("contexto"); %>
<%
    String menu = "<div class=\"well sidebar-nav\"><ul class=\"nav nav-list\">";

    menu += "<li class=\"nav-header\">Usuario</li>";

    if (oContexto.getClase().equals("usuario") && oContexto.getMetodo().equals("ocioso")) {
        menu += "<li class=\"active\">";
    } else {
        menu += "<li>";
    }
    menu += "<a href=\"Controller\">Home</a></li>";

    if (!oContexto.getHaySesion()) {
        if (oContexto.getClase().equals("usuario") && oContexto.getMetodo().equals("login")) {
            menu += "<li class=\"active\">";
        } else {
            menu += "<li>";
        }
        menu += "<a href=\"Controller?class=usuario&method=login\">Login</a></li>";
    } else {
        if (oContexto.getClase().equals("usuario") && oContexto.getMetodo().equals("logout")) {
            menu += "<li class=\"active\">";
        } else {
            menu += "<li>";
        }
        menu += "<a href=\"Controller?class=usuario&method=logout\">Logout</a></li>";
        menu += "<li class=\"nav-header\">Entrada</li>";
        if (oContexto.getClase().equals("entrada") && oContexto.getMetodo().equals("list")) {
            menu += "<li class=\"active\">";
        } else {
            menu += "<li>";
        }
        menu += "<a href=\"Controller?class=entrada&method=list\">Listar</a></li>";
        if (oContexto.getClase().equals("entrada") && oContexto.getMetodo().equals("new")) {
            menu += "<li class=\"active\">";
        } else {
            menu += "<li>";
        }
        menu += "<a href=\"Controller?class=entrada&method=new\">Crear</a></li>";
    }
    
    menu += "<li class=\"nav-header\">Profesor</li>";

    if (oContexto.getClase().equals("profesor") && oContexto.getMetodo().equals("list")) {
        menu += "<li class=\"active\">";
    } else {
        menu += "<li>";
    }
    menu += "<a href=\"Controller?class=profesor&method=list\">Listar</a></li>";

    if (oContexto.getClase().equals("profesor") && oContexto.getMetodo().equals("new")) {
        menu += "<li class=\"active\">";
    } else {
        menu += "<li>";
    }
    menu += "<a href=\"Controller?class=profesor&method=new\">Crear</a></li>";

    menu += "<li class=\"nav-header\">Alumno</li>";

    if (oContexto.getClase().equals("alumno") && oContexto.getMetodo().equals("list")) {
        menu += "<li class=\"active\">";
    } else {
        menu += "<li>";
    }
    menu += "<a href=\"Controller?class=alumno&method=list\">Listar</a></li>";

    if (oContexto.getClase().equals("alumno") && oContexto.getMetodo().equals("new")) {
        menu += "<li class=\"active\">";
    } else {
        menu += "<li>";
    }
    menu += "<a href=\"Controller?class=alumno&method=new\">Crear</a></li>";

    menu += "<li class=\"nav-header\">Alumno</li>";

    if (oContexto.getClase().equals("alumno") && oContexto.getMetodo().equals("list")) {
        menu += "<li class=\"active\">";
    } else {
        menu += "<li>";
    }
    menu += "<a href=\"Controller?class=alumno&method=list\">Listar</a></li>";
    if (oContexto.getClase().equals("alumno") && oContexto.getMetodo().equals("new")) {
        menu += "<li class=\"active\">";
    } else {
        menu += "<li>";
    }
    menu += "<a href=\"Controller?class=alumno&method=new\">Crear</a></li>";

    menu += "</ul></div>";

%>
<%=menu%>
