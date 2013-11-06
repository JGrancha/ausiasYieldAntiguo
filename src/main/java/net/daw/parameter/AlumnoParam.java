package net.daw.parameter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import net.daw.bean.AlumnoBean;

/**
 *
 * @author Sergio Martín Tárraga
 * @version v1.0
 * @since mie, 06 noviembre 2013
 */
public class AlumnoParam {

    private HttpServletRequest request;

    public AlumnoParam(HttpServletRequest request) throws Exception {
        this.request = request;
    }

    public AlumnoBean loadId(AlumnoBean oAlumno) throws NumberFormatException {
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

    public AlumnoBean load(AlumnoBean oAlumno) throws NumberFormatException {
        try {
            if ((request.getParameter("id_usuario") != null)) {
                oAlumno.setId_usuario(Integer.parseInt(request.getParameter("id_usuario")));
            }
            if ((request.getParameter("dni") != null)) {
                oAlumno.setDni(request.getParameter("dni"));
            }
            if ((request.getParameter("numexpediente") != null)) {
                oAlumno.setNumexpediente(request.getParameter("numexpediente"));
            }
            if ((request.getParameter("nombre") != null)) {
                oAlumno.setNombre(request.getParameter("nombre"));
            }
            if ((request.getParameter("ape1") != null)) {
                oAlumno.setApe1(request.getParameter("ape1"));
            }
            if ((request.getParameter("ape2") != null)) {
                oAlumno.setApe2(request.getParameter("ape2"));
            }
            if ((request.getParameter("sexo") != null)) {
                oAlumno.setSexo(request.getParameter("sexo"));
            }
            if ((request.getParameter("domicilio") != null)) {
                oAlumno.setDomicilio(request.getParameter("domicilio"));
            }
            if ((request.getParameter("codpostal") != null)) {
                oAlumno.setCodpostal(request.getParameter("codpostal"));
            }
            if ((request.getParameter("poblacion") != null)) {
                oAlumno.setPoblacion(request.getParameter("poblacion"));
            }
            if ((request.getParameter("provincia") != null)) {
                oAlumno.setProvincia(request.getParameter("provincia"));
            }
            if ((request.getParameter("telefono") != null)) {
                oAlumno.setTelefono(request.getParameter("telefono"));
            }
            if ((request.getParameter("email") != null)) {
                oAlumno.setEmail(request.getParameter("email"));
            }
            if ((request.getParameter("validado") != null)) {
                oAlumno.setValidado(request.getParameter("validado"));
            }
        } catch (NumberFormatException e) {
            throw new NumberFormatException("Controller: Error: Load: Formato de datos en parámetros incorrecto " + e.getMessage());
        }
        return oAlumno;
    }
}
