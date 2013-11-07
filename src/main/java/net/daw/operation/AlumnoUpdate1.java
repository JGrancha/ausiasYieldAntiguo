package net.daw.operation;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import net.daw.bean.AlumnoBean;
import net.daw.dao.AlumnoDao;
import net.daw.helper.Contexto;
import net.daw.parameter.AlumnoParam;

public class AlumnoUpdate1 implements Operation {

    @Override
    public Object execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
        Contexto oContexto = (Contexto) request.getAttribute("contexto");
        oContexto.setVista("jsp/alumno/form.jsp");
        AlumnoBean oAlumnoBean;
        AlumnoDao oAlumnoDao;
        oAlumnoBean = new AlumnoBean();
        AlumnoParam oAlumnoParam = new AlumnoParam(request);
        oAlumnoBean = oAlumnoParam.loadId(oAlumnoBean);
        oAlumnoDao = new AlumnoDao(oContexto.getEnumTipoConexion());
        try {
            oAlumnoBean = oAlumnoDao.get(oAlumnoBean);
        } catch (Exception e) {
            throw new ServletException("AlumnoController: Update Error: Phase 1: " + e.getMessage());
        }
        try {
            oAlumnoBean = oAlumnoParam.load(oAlumnoBean);
        } catch (NumberFormatException e) {
            oContexto.setVista("jsp/mensaje.jsp");
            return "Tipo de dato incorrecto en uno de los campos del formulario";
        }
        return oAlumnoBean;
    }
}
