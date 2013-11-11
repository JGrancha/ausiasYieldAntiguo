<%-- 
    Document   : list
    Created on : 07-nov-2013, 12:49:06
    Author     : Pedro Benito
--%>

<%@ page import="java.util.ArrayList"%>
<%@ page import="java.util.Iterator"%>
<%@ page import="net.daw.bean.ProfesorBean"%>
<%@ page import="net.daw.helper.Contexto"%>
<%
    Contexto oContexto = (Contexto) request.getAttribute("contexto");
    ArrayList<Object> alObjetoParametro = (ArrayList<Object>) oContexto.getParametro();
    ArrayList<ProfesorBean> alPagina = (ArrayList<ProfesorBean>) alObjetoParametro.get(0);
    Iterator<ProfesorBean> oIterador = alPagina.listIterator();
%>
<div class="row-fluid">
    <div class="span9">
        <h1>Listado de Profesores</h1>
        <%
            if (!oIterador.hasNext()) {
                out.print("<h4>Listado vacío</h4>");
            } else {
        %>
        <%
            if (oContexto.getHmOrder() != null) {
                out.print("<p>Listado ordenado por " + oContexto.getHmOrder().keySet().toArray()[0].toString() + "    ");
                out.print("<a href=\"Controller?" + oContexto.getSerializedParamsExceptOrder() + "\">(Quitar orden)</a></p>");
            } else {
                out.print("<p>Sin ordenar</p>");
            }
        %>
        <%
            if (oContexto.getHmFilter() != null) {
                out.print("<p>Listado filtrado por " + oContexto.getHmFilter().keySet().toArray()[0].toString() + "    ");
                out.print("<a href=\"Controller?" + oContexto.getSerializedParamsExceptFilter() + "\">(Quitar filtro)</a></p>");
            } else {
                out.print("<p>Sin filtrar</p>");
            }
        %>
        <%
            ArrayList<String> paginacion = (ArrayList<String>) alObjetoParametro.get(1);
            Iterator<String> iterador2 = paginacion.listIterator();
            while (iterador2.hasNext()) {
                String o = iterador2.next();
                out.print(o);
            }
        %>
    </div>
    <div class="span3">
        <div class="text-right">
            <legend>Filtro de Profesor</legend> 
            <form class="navbar-form pull-right" action="Controller" method="post" id="profesorForm">
                <fieldset>                                               
                    <%=oContexto.getSerializedParamsExceptFilterFormFormat()%>       
                    <span>
                        <select id="filter" name="filter" width="80" style="width: 100px">
                            <option value="id">Id</option>
                            <option value="id_usuario">Id Usuario</option>
                            <option value="dni">DNI</option>
                            <option value="nombre">Nombre</option>
                            <option value="ape1">1er Apellido</option>
                            <option value="ape2">2? Apellido</option>
                            <option value="sexo">Sexo</option>
                            <option value="telefono">Tel?fono</option>
                            <option value="email">Em@il</option>
                        </select>                        
                        <input id="filtervalue" name="filtervalue" type="text" size="20" maxlength="50" value=""  width="100" style="width: 100px"/>
                    </span>
                    <span>
                        <input type="submit" name="enviar" value="Filtrar" />
                    </span>
                </fieldset>
        </div>
    </div>
</div>
<table class="table table-hover table-condensed">
    <tr>
        <th>Id
            <a href="Controller?<%=oContexto.getSerializedParamsExceptOrder()%>&order=id&ordervalue=asc"><i class="icon-arrow-up"></i></a>
            <a href="Controller?<%=oContexto.getSerializedParamsExceptOrder()%>&order=id&ordervalue=desc"><i class="icon-arrow-down"></i></a>
        </th>
        <th>Id Usuario
            <a href="Controller?<%=oContexto.getSerializedParamsExceptOrder()%>&order=id_usuario&ordervalue=asc"><i class="icon-arrow-up"></i></a>
            <a href="Controller?<%=oContexto.getSerializedParamsExceptOrder()%>&order=id_usuario&ordervalue=desc"><i class="icon-arrow-down"></i></a>
        </th>
        <!--
         <th>DNI
             <a href="Controller?<%=oContexto.getSerializedParamsExceptOrder()%>&order=dni&ordervalue=asc"><i class="icon-arrow-up"></i></a>
             <a href="Controller?<%=oContexto.getSerializedParamsExceptOrder()%>&order=dni&ordervalue=desc"><i class="icon-arrow-down"></i></a>
         </th>
        -->
        <th>Nombre
            <a href="Controller?<%=oContexto.getSerializedParamsExceptOrder()%>&order=nombre&ordervalue=asc"><i class="icon-arrow-up"></i></a>
            <a href="Controller?<%=oContexto.getSerializedParamsExceptOrder()%>&order=nombre&ordervalue=desc"><i class="icon-arrow-down"></i></a>
        </th>
        <th>Primer Apellido
            <a href="Controller?<%=oContexto.getSerializedParamsExceptOrder()%>&order=ape1&ordervalue=asc"><i class="icon-arrow-up"></i></a>
            <a href="Controller?<%=oContexto.getSerializedParamsExceptOrder()%>&order=ape1&ordervalue=desc"><i class="icon-arrow-down"></i></a>
        </th>
        <th>Segundo Apellido
            <a href="Controller?<%=oContexto.getSerializedParamsExceptOrder()%>&order=ape2&ordervalue=asc"><i class="icon-arrow-up"></i></a>
            <a href="Controller?<%=oContexto.getSerializedParamsExceptOrder()%>&order=ape2&ordervalue=desc"><i class="icon-arrow-down"></i></a>        
        </th>
        <th>Sexo
            <a href="Controller?<%=oContexto.getSerializedParamsExceptOrder()%>&order=sexo&ordervalue=asc"><i class="icon-arrow-up"></i></a>
            <a href="Controller?<%=oContexto.getSerializedParamsExceptOrder()%>&order=sexo&ordervalue=desc"><i class="icon-arrow-down"></i></a>
        </th>
        <th>e-mail
            <a href="Controller?<%=oContexto.getSerializedParamsExceptOrder()%>&order=email&ordervalue=asc"><i class="icon-arrow-up"></i></a>
            <a href="Controller?<%=oContexto.getSerializedParamsExceptOrder()%>&order=email&ordervalue=desc"><i class="icon-arrow-down"></i></a>         
        </th>
        <!--
        <th>Teléfono
            <a href="Controller?<%=oContexto.getSerializedParamsExceptOrder()%>&order=telefono&ordervalue=asc"><i class="icon-arrow-up"></i></a>
            <a href="Controller?<%=oContexto.getSerializedParamsExceptOrder()%>&order=telefono&ordervalue=desc"><i class="icon-arrow-down"></i></a>
        </th>
        -->
        <th>Operaciones</th>
    </tr>
    <%        while (oIterador.hasNext()) {
            ProfesorBean oProfesorBean = oIterador.next();
    %>
    <tr>
        <td><%=oProfesorBean.getId()%></td>
        <td><%=oProfesorBean.getId_usuario()%></td>
        <!--
        <td><%=oProfesorBean.getDni()%></td>
        -->
        <td><%=oProfesorBean.getNombre()%></td>
        <td><%=oProfesorBean.getApe1()%></td>
        <td><%=oProfesorBean.getApe2()%></td>
        <td><%=oProfesorBean.getSexo()%></td>
        <td><%=oProfesorBean.getEmail()%></td>
        <!--
        <td><%=oProfesorBean.getTelefono()%></td>
        -->
        <td>
            <div class="btn-toolbar">
                <div class="btn-group">                    
                    <a class="btn btn-mini" href="Controller?class=profesor&method=view&id=<%=oProfesorBean.getId()%>"><i class="icon-eye-open"></i></a>                    
                    <a class="btn btn-mini" href="Controller?class=profesor&method=update&id=<%=oProfesorBean.getId()%>"><i class="icon-pencil"></i></a>           
                    <a class="btn btn-mini" href="Controller?class=profesor&method=remove&id=<%=oProfesorBean.getId()%>"><i class="icon-trash"></i></a>                         
                </div>
            </div>
        </td>
    </tr>
    <%
        }
    %>
</table>
<%
    }
%>