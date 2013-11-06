/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package net.daw.operation;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import net.daw.helper.Contexto;

/**
 *
 * @author Sergio Martín Tárraga
 * @version v1.0
 * @since mie, 06 noviembre 2013
 */
public class AlumnoView2 implements Operation {

    @Override
    public Object execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
        Contexto oContexto = (Contexto) request.getAttribute("contexto");
        oContexto.setVista("jsp/alumno/list.jsp");
        oContexto.setClase("alumno");
        oContexto.setMetodo("list");
        oContexto.setFase("1");
        AlumnoList1 oOperacion = new AlumnoList1();
        return oOperacion.execute(request, response);
    }
}
