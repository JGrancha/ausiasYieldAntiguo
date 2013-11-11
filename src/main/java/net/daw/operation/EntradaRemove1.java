package net.daw.operation;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import net.daw.bean.EntradaBean;
import net.daw.helper.Contexto;
import net.daw.parameter.EntradaParam;

public class EntradaRemove1 implements Operation {

    @Override
    public Object execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
        Contexto oContexto = (Contexto) request.getAttribute("contexto");
        oContexto.setVista("jsp/confirmForm.jsp");
        EntradaBean oEntradaBean = new EntradaBean();
        EntradaParam oEntradaParam = new EntradaParam(request);
        oEntradaBean = oEntradaParam.loadId(oEntradaBean);
        return "Borrar la entrada " + oEntradaBean.getId();

    }
}
