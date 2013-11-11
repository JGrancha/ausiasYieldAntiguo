package net.daw.operation;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import net.daw.bean.EntradaBean;
import net.daw.dao.EntradaDao;
import net.daw.helper.Contexto;
import net.daw.parameter.EntradaParam;

/**
 *
 * @author JoseGrancha
 */
public class EntradaView1 implements Operation {

    @Override
    public Object execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
        Contexto oContexto = (Contexto) request.getAttribute("contexto");
        oContexto.setVista("jsp/entrada/form.jsp");
        EntradaBean oEntradaBean;
        EntradaDao oEntradaDao;
        oEntradaBean = new EntradaBean();
        EntradaParam oEntradaParam = new EntradaParam(request);
        oEntradaBean = oEntradaParam.loadId(oEntradaBean);
        oEntradaDao = new EntradaDao(oContexto.getEnumTipoConexion());
        try {
            oEntradaBean = oEntradaDao.get(oEntradaBean);
        } catch (Exception e) {
            throw new ServletException("EntradaController: View Error: Phase 1: " + e.getMessage());
        }
        oEntradaBean = oEntradaParam.load(oEntradaBean);
        return oEntradaBean;
    }
}
