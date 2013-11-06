package net.daw.operation;

import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import net.daw.bean.AlumnoBean;
import net.daw.dao.AlumnoDao;
import net.daw.helper.Contexto;

public class AlumnoList1 implements Operation {

    @Override
    public Object execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
        Contexto oContexto = (Contexto) request.getAttribute("contexto");
        oContexto.setVista("jsp/alumno/list.jsp");
        try {
            AlumnoDao oAlumnoDao = new AlumnoDao(oContexto.getEnumTipoConexion());
            Integer intPages = oAlumnoDao.getPages(oContexto.getNrpp(), oContexto.getHmFilter(), oContexto.getHmOrder());
            if (oContexto.getPage() >= intPages) {
                oContexto.setPage(intPages);
            }
            ArrayList<AlumnoBean> listado = (ArrayList<AlumnoBean>) oAlumnoDao.getPage(oContexto.getNrpp(), oContexto.getPage(), oContexto.getHmFilter(), oContexto.getHmOrder());
            ArrayList<String> vecindad = (ArrayList<String>) oAlumnoDao.getNeighborhood("<a href=\"Controller?class=alumno&method=list&rpp=" + oContexto.getNrpp() + "&page=", oContexto.getPage(), intPages, 2);
            ArrayList<Object> a = new ArrayList<>();
            a.add(listado);
            a.add(vecindad);            
            return a;
        } catch (Exception e) {
            throw new ServletException("AlumnoList1: View Error: " + e.getMessage());
        }
    }
}
