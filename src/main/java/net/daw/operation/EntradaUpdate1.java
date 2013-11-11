package net.daw.operation;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import net.daw.bean.EntradaBean;
import net.daw.dao.EntradaDao;
import net.daw.helper.Contexto;
import net.daw.parameter.EntradaParam;

public class EntradaUpdate1 implements Operation {

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
            throw new ServletException("EntradaController: Update Error: Phase 1: " + e.getMessage());
        }
        try {
            oEntradaBean = oEntradaParam.load(oEntradaBean);
        } catch (NumberFormatException e) {
            oContexto.setVista("jsp/mensaje.jsp");
            return "Tipo de dato incorrecto en uno de los campos del formulario";
        }
        return oEntradaBean;
    }
}
