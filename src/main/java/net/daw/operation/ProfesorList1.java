/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package net.daw.operation;

import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import net.daw.bean.ProfesorBean;
import net.daw.dao.ProfesorDao;
import net.daw.helper.Contexto;

/**
 *
 * @author al037184
 */
public class ProfesorList1 implements Operation{

    @Override
    public Object execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
        Contexto oContexto = (Contexto) request.getAttribute("contexto");
        oContexto.setVista("jsp/profesor/list.jsp");
        try {
            ProfesorDao oProfesorDao = new ProfesorDao(oContexto.getEnumTipoConexion());
            Integer intPages = oProfesorDao.getPages(oContexto.getNrpp(), oContexto.getHmFilter(), oContexto.getHmOrder());
            if (oContexto.getPage() >= intPages) {
                oContexto.setPage(intPages);
            }
            ArrayList<ProfesorBean> listado = (ArrayList<ProfesorBean>) oProfesorDao.getPage(oContexto.getNrpp(), oContexto.getPage(), oContexto.getHmFilter(), oContexto.getHmOrder());
            ArrayList<String> vecindad = (ArrayList<String>) oProfesorDao.getNeighborhood("<a href=\"Controller?class=profesor&method=list&rpp=" + oContexto.getNrpp() + "&page=", oContexto.getPage(), intPages, 2);
            ArrayList<Object> a = new ArrayList<>();
            a.add(listado);
            a.add(vecindad);
            return a;
        } catch (Exception e) {
            throw new ServletException("ProfesorList1: View Error: " + e.getMessage());
        }
    }
}
