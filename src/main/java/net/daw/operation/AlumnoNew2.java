package net.daw.operation;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import net.daw.bean.AlumnoBean;
import net.daw.dao.AlumnoDao;
import net.daw.helper.Contexto;
import net.daw.parameter.AlumnoParam;

public class AlumnoNew2 implements Operation {

    @Override
    public Object execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
        Contexto oContexto = (Contexto) request.getAttribute("contexto");
        oContexto.setVista("jsp/mensaje.jsp");
        AlumnoBean oAlumnoBean = new AlumnoBean();
        AlumnoDao oAlumnoDao = new AlumnoDao(oContexto.getEnumTipoConexion());
        AlumnoParam oAlumnoParam = new AlumnoParam(request);
        oAlumnoBean = oAlumnoParam.loadId(oAlumnoBean);
        try {
            oAlumnoBean = oAlumnoParam.load(oAlumnoBean);
        } catch (NumberFormatException e) {
            return "Tipo de dato incorrecto en uno de los campos del formulario";
        }
        try {
            oAlumnoDao.set(oAlumnoBean);
        } catch (Exception e) {
            throw new ServletException("AlumnoController: Update Error: Phase 2: " + e.getMessage());
        }
        return "Se ha añadido la información del alumno con id=" + Integer.toString(oAlumnoBean.getId());
    }
}
