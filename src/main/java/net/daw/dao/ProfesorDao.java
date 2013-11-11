/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package net.daw.dao;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import net.daw.bean.ProfesorBean;
import net.daw.data.Mysql;

/**
 *
 * @author Pedro Benito
 */
public class ProfesorDao {

    private final Mysql oMysql;
    private final net.daw.helper.Enum.Connection enumTipoConexion;

    public ProfesorDao(net.daw.helper.Enum.Connection tipoConexion) throws Exception {
        oMysql = new Mysql();
        enumTipoConexion = tipoConexion;
    }

  
    public int getPages(int intRegsPerPag, HashMap<String, String> hmFilter, HashMap<String, String> hmOrder) throws Exception {
        int pages;
        try {
            oMysql.conexion(enumTipoConexion);
            pages = oMysql.getPages("profesor", intRegsPerPag, hmFilter, hmOrder);
            oMysql.desconexion();
            return pages;
        } catch (Exception e) {
            throw new Exception("ProfesorDao.getPages: Error: " + e.getMessage());
        }
    }

   
    public ArrayList<ProfesorBean> getPage(int intRegsPerPag, int intPage, HashMap<String, String> hmFilter, HashMap<String, String> hmOrder) throws Exception {
        ArrayList<Integer> arrId;
        ArrayList<ProfesorBean> arrProfesor = new ArrayList<>();
        try {
            oMysql.conexion(enumTipoConexion);
            arrId = oMysql.getPage("profesor", intRegsPerPag, intPage, hmFilter, hmOrder);
            Iterator<Integer> iterador = arrId.listIterator();
            while (iterador.hasNext()) {
                ProfesorBean oProfesorBean = new ProfesorBean(iterador.next());
                arrProfesor.add(this.get(oProfesorBean));
            }
            oMysql.desconexion();
            return arrProfesor;
        } catch (Exception e) {
            throw new Exception("ProfesorDao.getPage: Error: " + e.getMessage());
        }
    }
    
   
    public ArrayList<String> getNeighborhood(String strLink, int intPageNumber, int intTotalPages, int intNeighborhood) throws Exception {
        oMysql.conexion(enumTipoConexion);
        ArrayList<String> n = oMysql.getNeighborhood(strLink, intPageNumber, intTotalPages, intNeighborhood);
        oMysql.desconexion();
        return n;
    }

    public ProfesorBean get(ProfesorBean oProfesorBean) throws Exception {
        try {
            oMysql.conexion(enumTipoConexion);
            oProfesorBean.setId_usuario(Integer.parseInt(oMysql.getOne("profesor", "id_usuario", oProfesorBean.getId())));
            oProfesorBean.setNombre(oMysql.getOne("profesor", "nombre", oProfesorBean.getId()));
            oProfesorBean.setApe1(oMysql.getOne("profesor", "ape1", oProfesorBean.getId()));
            oProfesorBean.setApe2(oMysql.getOne("profesor", "ape2", oProfesorBean.getId()));
            oProfesorBean.setSexo(oMysql.getOne("profesor", "sexo", oProfesorBean.getId()));
            oProfesorBean.setTelefono(oMysql.getOne("profesor", "telefono", oProfesorBean.getId()));
            oProfesorBean.setEmail(oMysql.getOne("profesor", "email", oProfesorBean.getId()));
            oProfesorBean.setDni(oMysql.getOne("profesor", "dni", oProfesorBean.getId()));
            oMysql.desconexion();
        } catch (Exception e) {
            throw new Exception("ProfesorDao.getProfesor: Error: " + e.getMessage());
        } finally {
            oMysql.desconexion();
        }
        return oProfesorBean;
    }

    public void set(ProfesorBean oProfesorBean) throws Exception {
        try {
            oMysql.conexion(enumTipoConexion);
            oMysql.initTrans();
            if (oProfesorBean.getId() == 0) {
                oProfesorBean.setId(oMysql.insertOne("profesor"));
            }
            oMysql.updateOne(oProfesorBean.getId(), "profesor", "id_usuario", Integer.toString(oProfesorBean.getId_usuario()));
            oMysql.updateOne(oProfesorBean.getId(), "profesor", "nombre", oProfesorBean.getNombre());
            oMysql.updateOne(oProfesorBean.getId(), "profesor", "ape1", oProfesorBean.getApe1());
            oMysql.updateOne(oProfesorBean.getId(), "profesor", "ape2", oProfesorBean.getApe2());
            oMysql.updateOne(oProfesorBean.getId(), "profesor", "sexo", oProfesorBean.getSexo());
            oMysql.updateOne(oProfesorBean.getId(), "profesor", "telefono", oProfesorBean.getTelefono());
            oMysql.updateOne(oProfesorBean.getId(), "profesor", "email", oProfesorBean.getEmail());
            oMysql.updateOne(oProfesorBean.getId(), "profesor", "dni", oProfesorBean.getDni());

            oMysql.commitTrans();
        } catch (Exception e) {
            oMysql.rollbackTrans();
            throw new Exception("ProfesorDao.setProfesor: Error: " + e.getMessage());
        } finally {
            oMysql.desconexion();
        }
    }

    public void remove(ProfesorBean oProfesorBean) throws Exception {
        try {
            oMysql.conexion(enumTipoConexion);
            oMysql.removeOne(oProfesorBean.getId(), "profesor");
            oMysql.desconexion();
        } catch (Exception e) {
            throw new Exception("ProfesorDao.removeProfesor: Error: " + e.getMessage());
        } finally {
            oMysql.desconexion();
        }
    }

}
