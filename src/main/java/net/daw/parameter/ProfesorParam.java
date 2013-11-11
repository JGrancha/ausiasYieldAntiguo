/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package net.daw.parameter;

import javax.servlet.http.HttpServletRequest;
import net.daw.bean.ProfesorBean;

/**
 *
 * @author Pedro Benito
 */
public class ProfesorParam {
     private HttpServletRequest request;

    public ProfesorParam(HttpServletRequest request) throws Exception {
        this.request = request;
    }

    public ProfesorBean loadId(ProfesorBean oAlumno) throws NumberFormatException {
        try {
            if (request.getParameter("id") != null) {
                oAlumno.setId(Integer.parseInt(request.getParameter("id")));
            } else {
                oAlumno.setId(0);
            }
        } catch (NumberFormatException e) {
            throw new NumberFormatException("Controller: Error: Load: Formato de datos en parámetros incorrecto " + e.getMessage());
        }
        return oAlumno;
    }

    public ProfesorBean load(ProfesorBean oProfesor) throws NumberFormatException {
        try {
            if ((request.getParameter("id_usuario") != null)) {
                oProfesor.setId_usuario(Integer.parseInt(request.getParameter("id_usuario")));
            }
            if ((request.getParameter("dni") != null)) {
                oProfesor.setDni(request.getParameter("dni"));
            }
            if ((request.getParameter("nombre") != null)) {
                oProfesor.setNombre(request.getParameter("nombre"));
            }
            if ((request.getParameter("ape1") != null)) {
                oProfesor.setApe1(request.getParameter("ape1"));
            }
            if ((request.getParameter("ape2") != null)) {
                oProfesor.setApe2(request.getParameter("ape2"));
            }
            if ((request.getParameter("sexo") != null)) {
                oProfesor.setSexo(request.getParameter("sexo"));
            }
            if ((request.getParameter("telefono") != null)) {
                oProfesor.setTelefono(request.getParameter("telefono"));
            }
            if ((request.getParameter("email") != null)) {
                oProfesor.setEmail(request.getParameter("email"));
            }
        } catch (NumberFormatException e) {
            throw new NumberFormatException("Controller: Error: Load: Formato de datos en parámetros incorrecto " + e.getMessage());
        }
        return oProfesor;
    }
}
