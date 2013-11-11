/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package net.daw.operation;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import net.daw.bean.ProfesorBean;
import net.daw.dao.ProfesorDao;
import net.daw.helper.Contexto;
import net.daw.parameter.ProfesorParam;

/**
 *
 * @author Pedro Benito
 */
public class ProfesorRemove2 implements Operation {

    @Override
    public Object execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
        Contexto oContexto = (Contexto) request.getAttribute("contexto");
        oContexto.setVista("jsp/mensaje.jsp");
        ProfesorBean oProfesorBean = new ProfesorBean();
        ProfesorParam oProfesorParam = new ProfesorParam(request);
        oProfesorBean = oProfesorParam.loadId(oProfesorBean);
        try {
            ProfesorDao oProfesorDao = new ProfesorDao(oContexto.getEnumTipoConexion());
            oProfesorDao.remove(oProfesorBean);
        } catch (Exception e) {
            throw new ServletException("EntradaController: Remove Error: " + e.getMessage());
        }
        String Mensaje = ("Se ha eliminado la información de la entrada con id=" + Integer.toString(oProfesorBean.getId()));
        return Mensaje;
    }
}
