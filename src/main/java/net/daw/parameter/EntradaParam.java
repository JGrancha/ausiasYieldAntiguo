package net.daw.parameter;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import javax.servlet.http.HttpServletRequest;
import net.daw.bean.EntradaBean;

/**
 *
 * @author rafa
 */
public class EntradaParam {

    private final HttpServletRequest request;
    SimpleDateFormat dFormat = new SimpleDateFormat("yyyy-MM-dd");

    public EntradaParam(HttpServletRequest request) throws Exception {
        this.request = request;
    }

    public EntradaBean loadId(EntradaBean oEntrada) throws NumberFormatException {
        try {
            if (request.getParameter("id") != null) {
                oEntrada.setId(Integer.parseInt(request.getParameter("id")));
            } else {
                oEntrada.setId(0);
            }
        } catch (NumberFormatException e) {
            throw new NumberFormatException("Controller: Error: Load: Formato de datos en parámetros incorrecto " + e.getMessage());
        }
        return oEntrada;
    }

    public EntradaBean load(EntradaBean oEntrada) throws NumberFormatException, ParseException {
        try {
            if ((request.getParameter("id_usuario") != null)) {
                oEntrada.setId_usuario(Integer.parseInt(request.getParameter("id_usuario")));
            }
            if ((request.getParameter("id_hilo") != null)) {
                oEntrada.setId_hilo(Integer.parseInt(request.getParameter("id_hilo")));
            }
            if ((request.getParameter("titulo") != null)) {
                oEntrada.setTitulo(request.getParameter("titulo"));
            }
            if ((request.getParameter("contenido") != null)) {
                oEntrada.setContenido(request.getParameter("contenido"));
            }
            if ((request.getParameter("fecha") != null)) {
                oEntrada.setFecha(dFormat.parse(request.getParameter("fecha")));
            }
        } catch (NumberFormatException e) {
            throw new NumberFormatException("Controller: Error: Load: Formato de datos en parámetros incorrecto " + e.getMessage());
        }
        return oEntrada;
    }
}
