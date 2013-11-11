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
 * @author al037184
 */
public class ProfesorUpdate2 implements Operation{
     @Override
    public Object execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
        Contexto oContexto = (Contexto) request.getAttribute("contexto");
        oContexto.setVista("jsp/mensaje.jsp");   
        ProfesorBean oProfesorBean = new ProfesorBean();
        ProfesorDao oProfesorDao = new ProfesorDao(oContexto.getEnumTipoConexion());
        ProfesorParam oProfesorParam = new ProfesorParam(request);
        oProfesorBean = oProfesorParam.loadId(oProfesorBean);
        try {
            oProfesorBean = oProfesorParam.load(oProfesorBean);
        } catch (NumberFormatException e) {
            return "Tipo de dato incorrecto en uno de los campos del formulario";
        }         
        try {
            oProfesorDao.set(oProfesorBean);
        } catch (Exception e) {
            throw new ServletException("AlumnoController: Update Error: Phase 2: " + e.getMessage());
        }
        return "Se ha modificado la información del profesor con id=" + Integer.toString(oProfesorBean.getId());
}}
