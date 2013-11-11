package net.daw.operation;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import net.daw.bean.EntradaBean;
import net.daw.dao.EntradaDao;
import net.daw.helper.Contexto;
import net.daw.parameter.EntradaParam;

public class EntradaUpdate2 implements Operation {

    @Override
    public Object execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
        Contexto oContexto = (Contexto) request.getAttribute("contexto");
        oContexto.setVista("jsp/mensaje.jsp");
        EntradaBean oEntradaBean = new EntradaBean();
        EntradaDao oEntradaDao = new EntradaDao(oContexto.getEnumTipoConexion());
        EntradaParam oEntradaParam = new EntradaParam(request);
        oEntradaBean = oEntradaParam.loadId(oEntradaBean);
        try {
            oEntradaBean = oEntradaParam.load(oEntradaBean);
        } catch (NumberFormatException e) {
            return "Tipo de dato incorrecto en uno de los campos del formulario";
        }
        try {
            oEntradaDao.set(oEntradaBean);
        } catch (Exception e) {
            throw new ServletException("EntradaController: Update Error: Phase 2: " + e.getMessage());
        }
        return "Se ha modificado la información de la entrada con id=" + Integer.toString(oEntradaBean.getId());
    }
}
