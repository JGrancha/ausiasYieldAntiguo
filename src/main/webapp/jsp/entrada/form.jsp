<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@page import="net.daw.helper.Contexto"%>
<%@page import="net.daw.bean.EntradaBean"%>
<% Contexto oContexto = (Contexto) request.getAttribute("contexto");

    String strTitulo = "";
    String strControlEnabled = "";
    String strValueBoton = "Enviar";
    Integer id = 0;
    Integer id_Usuario = 0;
    Integer id_Hilo = 0;
    String titulo = "";
    String contenido = "";
    String fecha = "";
    SimpleDateFormat dFormat = new SimpleDateFormat("dd-MM-yyyy");
    if ("update".equals(oContexto.getMetodo()) || oContexto.getMetodo().equals("view")) {
        EntradaBean oEntradaBean = (EntradaBean) oContexto.getParametro();
        id = oEntradaBean.getId();
        id_Usuario = oEntradaBean.getId_usuario();
        id_Hilo = oEntradaBean.getId_hilo();
        titulo = oEntradaBean.getTitulo();
        contenido = oEntradaBean.getContenido();
        fecha = dFormat.format(oEntradaBean.getFecha());
    }
    if (oContexto.getMetodo().equals("view")) {
        strTitulo = "Vista";
        strControlEnabled = "disabled=\"true\"";
        strValueBoton = "Cerrar";
    } else {
        strValueBoton = "Guardar";
    }
%>
<h1>Formulario de entrada</h1>
<hr/>
<form class="form-horizontal" action="Controller" method="post" id="entradaForm">
    <fieldset>
        <!-- <legend>Formulario de producto</legend> -->
        <input type="hidden" name="id" value="<%=id%>" /> 
        <input type="hidden" name="class" value="entrada" /> 
        <input type="hidden" name="method" value="<%=oContexto.getMetodo()%>" /> 
        <input type="hidden" name="phase" value="2" />
        <div class="control-group">
            <label class="control-label" for="idusuario">Id_usuario </label>
            <div class="controls">
                <input <%=strControlEnabled%>  id="idusuario" name="id_usuario"
                                               type="text" size="30" maxlength="50" autofocus="autofocus"
                                               value="<%=id_Usuario%>" />
            </div>
        </div>
        <div class="control-group">
            <label class="control-label" for="idhilo">Id_Hilo </label>
            <div class="controls">
                <input <%=strControlEnabled%>  id="idhilo" name="id_hilo"
                                               type="text" size="30" maxlength="50" autofocus="autofocus"
                                               value="<%=id_Hilo%>" />
            </div>
        </div>
        <div class="control-group">
            <label class="control-label" for="titulo">Título: </label>
            <div class="controls">
                <input <%=strControlEnabled%>  id="titulo" name="titulo"
                                               type="text" size="30" maxlength="50" autofocus="autofocus"
                                               value="<%=titulo%>" />
            </div>
        </div>
        <div class="control-group">
            <label class="control-label" for="contenido">Contenido: </label> 
            <div class="controls">
                <input <%=strControlEnabled%>  id="contenido"
                                               name="contenido" type="text" size="30" maxlength="50"
                                               value="<%=contenido%>" />
            </div>
        </div>
        <div class="control-group">
            <label class="control-label" for="fecha">Fecha: </label> 
            <div class="controls">
                <input <%=strControlEnabled%>  id="fecha"
                                               name="fecha" type="text" size="30" maxlength="50"
                                               value="<%=fecha%>" placeholder="Año-Mes-Día"/> 
            </div>
        </div>           
        <div class="control-group">
            <div class="controls">
                <input type="submit" name="enviar" value="<%=strValueBoton%>" />
            </div>
        </div>
    </fieldset>
</form>
