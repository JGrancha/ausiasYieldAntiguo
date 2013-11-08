package net.daw.operation;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import net.daw.bean.AlumnoBean;
import net.daw.helper.Contexto;
import net.daw.parameter.AlumnoParam;

public class AlumnoRemove1 implements Operation {

    @Override
    public Object execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
        Contexto oContexto = (Contexto) request.getAttribute("contexto");
        oContexto.setVista("jsp/confirmForm.jsp");
        AlumnoBean oAlumnoBean = new AlumnoBean();   
        AlumnoParam oAlumnoParam = new AlumnoParam(request);
        oAlumnoBean = oAlumnoParam.loadId(oAlumnoBean);
        return "Borrar al alumno " + oAlumnoBean.getId();

    }
}
