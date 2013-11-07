package net.daw.dao;

import net.daw.bean.UsuarioBean;
import net.daw.data.Mysql;
import net.daw.helper.Enum;

public class UsuarioDao {

    private final Mysql oMysql;
    private final Enum.Connection enumTipoConexion;

    public UsuarioDao(Enum.Connection tipoConexion) throws Exception {
        oMysql = new Mysql();
        enumTipoConexion = tipoConexion;
    }

    public UsuarioBean getFromLogin(UsuarioBean oUsuario) throws Exception {
        try {
            oMysql.conexion(enumTipoConexion);
            String strId = oMysql.getId("usuario", "login", oUsuario.getLogin());
            if (strId == null) {
                oUsuario.setId(0);
            } else {
                oUsuario.setId(Integer.parseInt(strId));
                oUsuario.setPassword(oMysql.getOne("usuario", "password", oUsuario.getId()));

                String strIdAlumno = oMysql.getId("alumno", "id_usuario", Integer.toString(oUsuario.getId()));
                if (strIdAlumno == null) {
                    String strIdEmpresa = oMysql.getId("empresa", "id_usuario", Integer.toString(oUsuario.getId()));
                    if (strIdEmpresa == null) {
                        String strIdProfesor = oMysql.getId("profesor", "id_usuario", Integer.toString(oUsuario.getId()));
                    }

                }
                
            }
            oMysql.desconexion();
            return oUsuario;
        } catch (Exception e) {
            throw new Exception("UsuarioDao.getPage: Error: " + e.getMessage());
        }
    }
}
