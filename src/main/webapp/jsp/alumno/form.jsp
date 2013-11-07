<%@page import="net.daw.helper.Contexto"%>
<%@page import="net.daw.bean.AlumnoBean"%>
<% Contexto oContexto = (Contexto) request.getAttribute("contexto");
    String strTitulo = "";
    String strControlEnabled = "";
    String strValueBoton = "Enviar";
    Integer id = 0;
    Integer id_usuario = 0;
    String dni = "";
    String numexpediente = "";
    String nombre = "";
    String ape1 = "";
    String ape2 = "";
    String sexo = "";
    String domicilio = "";
    String codpostal = "";
    String poblacion = "";
    String provincia = "";
    String telefono = "";
    String email = "";
    String validado = "";
    if (oContexto.getMetodo().equals("update") || oContexto.getMetodo().equals("view")) {
        AlumnoBean oAlumnoBean = (AlumnoBean) oContexto.getParametro();
        id = oAlumnoBean.getId();
        id_usuario = oAlumnoBean.getId_usuario();
        dni = oAlumnoBean.getDni();
        numexpediente = oAlumnoBean.getNumexpediente();
        nombre = oAlumnoBean.getNombre();
        ape1 = oAlumnoBean.getApe1();
        ape2 = oAlumnoBean.getApe2();
        sexo = oAlumnoBean.getSexo();
        domicilio = oAlumnoBean.getDomicilio();
        codpostal = oAlumnoBean.getCodpostal();
        poblacion = oAlumnoBean.getPoblacion();
        provincia = oAlumnoBean.getProvincia();
        telefono = oAlumnoBean.getTelefono();
        email = oAlumnoBean.getEmail();
        validado = oAlumnoBean.getValidado();
    }
    if (oContexto.getMetodo().equals("view")) {
        strTitulo = "Vista";
        strControlEnabled = "disabled=\"true\"";
        strValueBoton = "Cerrar";
    }
    if (oContexto.getMetodo().equals("update")) {
        strTitulo = "Edición";
        strValueBoton = "Modificar";
    }
    if (oContexto.getMetodo().equals("new")) {
        strTitulo = "Alta";
        strValueBoton = "Crear";
    }
%>
<h1><%=strTitulo%> de Alumno</h1>
<form class="form-horizontal" action="Controller" method="post" id="alumnoForm">
    <fieldset>
        <legend>Formulario de Alumno</legend>
        <input type="hidden" name="id" value="<%=id%>" /> 
        <input type="hidden" name="class" value="alumno" /> 
        <input type="hidden" name="method" value="<%=oContexto.getMetodo()%>" /> 
        <input type="hidden" name="phase" value="2" />
        <div class="control-group">
            <label class="control-label" for="id_usuario">Id Usuario: </label> 
            <div class="controls">
                <input <%=strControlEnabled%> id="id_usuario" name="id_usuario" type="text" size="30" maxlength="50" autofocus="autofocus" value="<%=id_usuario%>" /><br />
            </div>
        </div>
        <div class="control-group">
            <label class="control-label" for="dni">DNI: </label> 
            <div class="controls">
                <input <%=strControlEnabled%> id="dni" name="dni" type="text" size="30" maxlength="50" autofocus="autofocus" value="<%=dni%>" /><br />
            </div>
        </div>
        <div class="control-group">
            <label class="control-label" for="numexpediente">Núm. Expediente: </label> 
            <div class="controls">
                <input <%=strControlEnabled%> id="numexpediente" name="numexpediente" type="text" size="30" maxlength="50" autofocus="autofocus" value="<%=numexpediente%>" /><br />
            </div>
        </div>
        <div class="control-group">
            <label class="control-label" for="nombre">Nombre: </label> 
            <div class="controls">
                <input <%=strControlEnabled%> id="nombre" name="nombre" type="text" size="30" maxlength="50" autofocus="autofocus" value="<%=nombre%>" /><br />
            </div>
        </div>
        <div class="control-group">
            <label class="control-label" for="ape1">Primer Apellido: </label>
            <div class="controls">
                <input <%=strControlEnabled%> id="ape1" name="ape1" type="text" size="30" maxlength="50" value="<%=ape1%>" /><br />
            </div>
        </div>
        <div class="control-group">
            <label class="control-label" for="ape2">Segundo Apellido: </label> 
            <div class="controls">
                <input <%=strControlEnabled%> id="ape2" name="ape2" type="text" size="30" maxlength="50" value="<%=ape2%>" /> <br />
            </div>
        </div>
        <div class="control-group">
            <label class="control-label" for="sexo">Sexo: </label> 
            <div class="controls">
                <input <%=strControlEnabled%> id="sexo" name="sexo" type="text" size="30" maxlength="50" autofocus="autofocus" value="<%=sexo%>" /><br />
            </div>
        </div>
        <div class="control-group">
            <label class="control-label" for="domicilio">Domicilio: </label> 
            <div class="controls">
                <input <%=strControlEnabled%> id="domicilio" name="domicilio" type="text" size="30" maxlength="50" autofocus="autofocus" value="<%=domicilio%>" /><br />
            </div>
        </div>
        <div class="control-group">
            <label class="control-label" for="codpostal">C. Postal: </label> 
            <div class="controls">
                <input <%=strControlEnabled%> id="codpostal" name="codpostal" type="text" size="30" maxlength="50" autofocus="autofocus" value="<%=codpostal%>" /><br />
            </div>
        </div>
        <div class="control-group">
            <label class="control-label" for="poblacion">Población: </label> 
            <div class="controls">
                <input <%=strControlEnabled%> id="poblacion" name="poblacion" type="text" size="30" maxlength="50" autofocus="autofocus" value="<%=poblacion%>" /><br />
            </div>
        </div>
        <div class="control-group">
            <label class="control-label" for="provincia">Provincia: </label> 
            <div class="controls">
                <input <%=strControlEnabled%> id="provincia" name="provincia" type="text" size="30" maxlength="50" autofocus="autofocus" value="<%=provincia%>" /><br />
            </div>
        </div>
        <div class="control-group">
            <label class="control-label" for="telefono">Teléfono: </label> 
            <div class="controls">
                <input <%=strControlEnabled%> id="telefono" name="telefono" type="text" size="30" maxlength="50" autofocus="autofocus" value="<%=telefono%>" /><br />
            </div>
        </div>
        <div class="control-group">
            <label class="control-label" for="email">Email: </label> 
            <div class="controls">
                <input <%=strControlEnabled%> id="email" name="email" type="text" size="30" maxlength="50" value="<%=email%>" /><br />
            </div>
        </div>
        <div class="control-group">
            <label class="control-label" for="validado">Validado: </label> 
            <div class="controls">
                <input <%=strControlEnabled%> id="validado" name="validado" type="text" size="30" maxlength="50" autofocus="autofocus" value="<%=validado%>" /><br />
            </div>
        </div>
        <div class="control-group">
            <div class="controls">
                <input type="submit" name="enviar" value="<%=strValueBoton%>" />
            </div>
        </div>   
    </fieldset>
</form>
