package net.daw.operation;

import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import net.daw.bean.EntradaBean;
import net.daw.dao.EntradaDao;
import net.daw.helper.Contexto;

public class EntradaList1 implements Operation {

    @Override
    public Object execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
        Contexto oContexto = (Contexto) request.getAttribute("contexto");
        oContexto.setVista("jsp/entrada/list.jsp");
        try {
            EntradaDao oEntradaDAO = new EntradaDao(oContexto.getEnumTipoConexion());
            Integer intPages = oEntradaDAO.getPages(oContexto.getNrpp(), oContexto.getHmFilter(), oContexto.getHmOrder());
            if (oContexto.getPage() >= intPages) {
                oContexto.setPage(intPages);
            }
            if (oContexto.getPage() < 1) {
                oContexto.setPage(1);
            }
            ArrayList<EntradaBean> listado = (ArrayList<EntradaBean>) oEntradaDAO.getPage(oContexto.getNrpp(), oContexto.getPage(), oContexto.getHmFilter(), oContexto.getHmOrder());
            String strUrl = "<a href=\"Controller?" + oContexto.getSerializedParamsExceptPage() + "&page=";
            ArrayList<String> vecindad = (ArrayList<String>) oEntradaDAO.getNeighborhood(strUrl, oContexto.getPage(), intPages, 2);
            ArrayList<Object> a = new ArrayList<>();
            a.add(listado);
            a.add(vecindad);
            return a;
        } catch (Exception e) {
            throw new ServletException("EntradaList1: View Error: " + e.getMessage());
        }
    }
}
