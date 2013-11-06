package net.daw.operation;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import net.daw.bean.UsuarioBean;
import net.daw.dao.UsuarioDao;
import net.daw.helper.Contexto;
import net.daw.parameter.ContextParam;
import net.daw.parameter.UsuarioParam;

public class UsuarioLogin2 implements Operation {

    @Override
    public Object execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
        Contexto oContexto = (Contexto) request.getAttribute("contexto");
        oContexto.setVista("jsp/mensaje.jsp");
        String result;
        UsuarioBean oUsuario1 = new UsuarioBean();
        UsuarioParam oUsuarioParam = new UsuarioParam(request);
        try {
            oUsuario1 = oUsuarioParam.load(oUsuario1);
        } catch (NumberFormatException e) {
            return "Tipo de dato incorrecto en uno de los campos del formulario";
        }
        UsuarioBean oUsuario2 = new UsuarioBean();
        UsuarioDao oUsuarioDao = new UsuarioDao(oContexto.getEnumTipoConexion());
        oUsuario2.setLogin(oUsuario1.getLogin());
        oUsuario2 = oUsuarioDao.getFromLogin(oUsuario2);
        if (oUsuario2.getId() != 0 && oUsuario2.getPassword().equals(oUsuario1.getPassword())) {            
            result = "Bienvenido/a " + oUsuario2.getLogin()+ " Has entrado en la aplicación. Ahora puedes operar con los menús.";
            request.getSession().setAttribute("usuarioBean", oUsuario2);
        } else {
            result = "Login o password incorrectos. No has entrado en la aplicación.";
        }
        ContextParam oContextParam=new ContextParam(request);
        oContexto=oContextParam.loadSession(oContexto);
        return result;
    }

}
