package net.daw.operation;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import net.daw.bean.EntradaBean;
import net.daw.dao.EntradaDao;
import net.daw.helper.Contexto;
import net.daw.parameter.EntradaParam;

public class EntradaRemove2 implements Operation {

    @Override
    public Object execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
        Contexto oContexto = (Contexto) request.getAttribute("contexto");
        oContexto.setVista("jsp/mensaje.jsp");
        EntradaBean oEntradaBean = new EntradaBean();
        EntradaParam oEntradaParam = new EntradaParam(request);
        oEntradaBean = oEntradaParam.loadId(oEntradaBean);
        try {
            EntradaDao oEntradaDAO = new EntradaDao(oContexto.getEnumTipoConexion());
            oEntradaDAO.remove(oEntradaBean);
        } catch (Exception e) {
            throw new ServletException("EntradaController: Remove Error: " + e.getMessage());
        }
        String Mensaje = ("Se ha eliminado la información de la entrada con id=" + Integer.toString(oEntradaBean.getId()));
        return Mensaje;
    }

}
