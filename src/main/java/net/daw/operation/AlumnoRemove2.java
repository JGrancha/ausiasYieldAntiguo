package net.daw.operation;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import net.daw.bean.AlumnoBean;
import net.daw.dao.AlumnoDao;
import net.daw.helper.Contexto;
import net.daw.parameter.AlumnoParam;

public class AlumnoRemove2 implements Operation {

    @Override
    public Object execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
        Contexto oContexto = (Contexto) request.getAttribute("contexto");
        oContexto.setVista("jsp/mensaje.jsp");   
        AlumnoBean oAlumnoBean = new AlumnoBean(); 
        AlumnoParam oAlumnoParam = new AlumnoParam(request);
        oAlumnoBean = oAlumnoParam.loadId(oAlumnoBean);
        try {
            AlumnoDao oAlumnoDAO = new AlumnoDao(oContexto.getEnumTipoConexion());
            oAlumnoDAO.remove(oAlumnoBean);
        } catch (Exception e) {
            throw new ServletException("AlumnoController: Remove Error: " + e.getMessage());
        }
        String Mensaje = ("Se ha eliminado la información del alumno con id=" + Integer.toString(oAlumnoBean.getId()));
        return Mensaje;
    }

}
