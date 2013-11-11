
<%@page import="java.text.SimpleDateFormat"%>
<%@ page import="net.daw.helper.Contexto"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="java.util.Iterator"%>
<%@ page import="net.daw.bean.EntradaBean"%>
<%
    Contexto oContexto = (Contexto) request.getAttribute("contexto");
    ArrayList<Object> alObjetoParametro = (ArrayList<Object>) oContexto.getParametro();
    ArrayList<EntradaBean> alPagina = (ArrayList<EntradaBean>) alObjetoParametro.get(0);
    Iterator<EntradaBean> oIterador = alPagina.listIterator();
    SimpleDateFormat dFormat = new SimpleDateFormat("dd-MM-yyyy");
%>
<div class="row-fluid">
    <div class="span9">
        <h1>Listado de Entradas</h1>
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
            <legend>Filtro de entrada</legend> 
            <form class="navbar-form pull-right" action="Controller" method="post" id="clienteForm">
                <fieldset>                                               
                    <%=oContexto.getSerializedParamsExceptFilterFormFormat()%>       
                    <span>
                        <select id="filter" name="filter" width="80" style="width: 80px">
                            <option>id</option>
                            <option>id_usuario</option>
                            <option>id_hilo</option>
                            <option>título</option>
                            <option>contenido</option>  
                            <option>fecha</option>
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
        <th>id
            <a href="Controller?<%=oContexto.getSerializedParamsExceptOrder()%>&order=id&ordervalue=asc"><i class="icon-arrow-up"></i></a>
            <a href="Controller?<%=oContexto.getSerializedParamsExceptOrder()%>&order=id&ordervalue=desc"><i class="icon-arrow-down"></i></a>        
        </th>
        <th>id_usuario
            <a href="Controller?<%=oContexto.getSerializedParamsExceptOrder()%>&order=id_usuario&ordervalue=asc"><i class="icon-arrow-up"></i></a>
            <a href="Controller?<%=oContexto.getSerializedParamsExceptOrder()%>&order=id_usuario&ordervalue=desc"><i class="icon-arrow-down"></i></a>        
        </th>
        <th>id_hilo
            <a href="Controller?<%=oContexto.getSerializedParamsExceptOrder()%>&order=id_hilo&ordervalue=asc"><i class="icon-arrow-up"></i></a>
            <a href="Controller?<%=oContexto.getSerializedParamsExceptOrder()%>&order=id_hilo&ordervalue=desc"><i class="icon-arrow-down"></i></a>        
        </th>
        <th>título
            <a href="Controller?<%=oContexto.getSerializedParamsExceptOrder()%>&order=titulo&ordervalue=asc"><i class="icon-arrow-up"></i></a>
            <a href="Controller?<%=oContexto.getSerializedParamsExceptOrder()%>&order=titulo&ordervalue=desc"><i class="icon-arrow-down"></i></a>        
        </th>
        <th>contenido
            <a href="Controller?<%=oContexto.getSerializedParamsExceptOrder()%>&order=contenido&ordervalue=asc"><i class="icon-arrow-up"></i></a>
            <a href="Controller?<%=oContexto.getSerializedParamsExceptOrder()%>&order=contenido&ordervalue=desc"><i class="icon-arrow-down"></i></a>        
        </th>
        <th>fecha
            <a href="Controller?<%=oContexto.getSerializedParamsExceptOrder()%>&order=fecha&ordervalue=asc"><i class="icon-arrow-up"></i></a>
            <a href="Controller?<%=oContexto.getSerializedParamsExceptOrder()%>&order=fecha&ordervalue=desc"><i class="icon-arrow-down"></i></a>                
        </th>

        <th>Operaciones</th>
    </tr>
    <%
        while (oIterador.hasNext()) {
            EntradaBean oEntradaBEAN = oIterador.next();
    %>
    <tr>
        <td><%=oEntradaBEAN.getId()%></td>
        <td><%=oEntradaBEAN.getId_hilo()%></td>
        <td><%=oEntradaBEAN.getId_usuario()%></td>
        <td><%=oEntradaBEAN.getTitulo()%></td>
        <td><%=oEntradaBEAN.getContenido()%></td>
        <td><%=dFormat.format(oEntradaBEAN.getFecha())%></td>

        <td>
            <div class="btn-toolbar">
                <div class="btn-group">
                    <a class="btn btn-mini" href="Controller?class=entrada&method=view&id=<%=oEntradaBEAN.getId()%>"><i class="icon-eye-open"></i></a>                    
                    <a class="btn btn-mini" href="Controller?class=entrada&method=update&id=<%=oEntradaBEAN.getId()%>"><i class="icon-pencil"></i></a>           
                    <a class="btn btn-mini" href="Controller?class=entrada&method=remove&id=<%=oEntradaBEAN.getId()%>"><i class="icon-trash"></i></a>            
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
