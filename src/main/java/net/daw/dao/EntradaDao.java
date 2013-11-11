/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package net.daw.dao;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import net.daw.bean.EntradaBean;
import net.daw.data.Mysql;

/**
 *
 * @author JoseGrancha
 */
public class EntradaDao {

    private final Mysql oMysql;
    private final net.daw.helper.Enum.Connection enumTipoConexion;
    SimpleDateFormat dFormat = new SimpleDateFormat("yyyy-MM-dd");

    public EntradaDao(net.daw.helper.Enum.Connection tipoConexion) throws Exception {
        oMysql = new Mysql();
        enumTipoConexion = tipoConexion;
    }

    public int getPages(int intRegsPerPag, HashMap<String, String> hmFilter, HashMap<String, String> hmOrder) throws Exception {
        int pages;
        try {
            oMysql.conexion(enumTipoConexion);
            pages = oMysql.getPages("entrada", intRegsPerPag, hmFilter, hmOrder);
            oMysql.desconexion();
            return pages;
        } catch (Exception e) {
            throw new Exception("EntradaDao.getPages: Error: " + e.getMessage());
        }
    }

    public ArrayList<EntradaBean> getPage(int intRegsPerPag, int intPage, HashMap<String, String> hmFilter, HashMap<String, String> hmOrder) throws Exception {
        ArrayList<Integer> arrId;
        ArrayList<EntradaBean> arrEntrada = new ArrayList<>();
        try {
            oMysql.conexion(enumTipoConexion);
            arrId = oMysql.getPage("entrada", intRegsPerPag, intPage, hmFilter, hmOrder);
            Iterator<Integer> iterador = arrId.listIterator();
            while (iterador.hasNext()) {
                EntradaBean oEntradaBean = new EntradaBean(iterador.next());
                arrEntrada.add(this.get(oEntradaBean));
            }
            oMysql.desconexion();
            return arrEntrada;
        } catch (Exception e) {
            throw new Exception("EntradaDao.getPage: Error: " + e.getMessage());
        }
    }

    public ArrayList<String> getNeighborhood(String strLink, int intPageNumber, int intTotalPages, int intNeighborhood) throws Exception {
        oMysql.conexion(enumTipoConexion);
        ArrayList<String> n = oMysql.getNeighborhood(strLink, intPageNumber, intTotalPages, intNeighborhood);
        oMysql.desconexion();
        return n;
    }

    public EntradaBean get(EntradaBean oEntradaBean) throws Exception {
        try {
            oMysql.conexion(enumTipoConexion);

            oEntradaBean.setId(Integer.parseInt(oMysql.getOne("entrada", "id", oEntradaBean.getId())));
            oEntradaBean.setId_hilo(Integer.parseInt(oMysql.getOne("entrada", "id_hilo", oEntradaBean.getId())));
            oEntradaBean.setId_usuario(Integer.parseInt(oMysql.getOne("entrada", "id_usuario", oEntradaBean.getId())));
            oEntradaBean.setTitulo(oMysql.getOne("entrada", "titulo", oEntradaBean.getId()));
            oEntradaBean.setContenido(oMysql.getOne("entrada", "contenido", oEntradaBean.getId()));
            oEntradaBean.setFecha(dFormat.parse(oMysql.getOne("entrada", "fecha", oEntradaBean.getId())));
            oMysql.desconexion();
        } catch (Exception e) {
            throw new Exception("EntradaDao.getEntrada: Error: " + e.getMessage());
        } finally {
            oMysql.desconexion();
        }
        return oEntradaBean;
    }

    public void set(EntradaBean oEntradaBean) throws Exception {

        try {
            oMysql.conexion(enumTipoConexion);
            oMysql.initTrans();
            if (oEntradaBean.getId() == 0) {
                oEntradaBean.setId(oMysql.insertOne("entrada"));
            }
            oMysql.updateOne(oEntradaBean.getId(), "entrada", "id",Integer.toString(oEntradaBean.getId()));
            oMysql.updateOne(oEntradaBean.getId(), "entrada", "id_hilo", Integer.toString(oEntradaBean.getId_hilo()));
            oMysql.updateOne(oEntradaBean.getId(), "entrada", "id_usuario", Integer.toString(oEntradaBean.getId_usuario()));
            oMysql.updateOne(oEntradaBean.getId(), "entrada", "titulo", oEntradaBean.getTitulo());
            oMysql.updateOne(oEntradaBean.getId(), "entrada", "contenido", oEntradaBean.getContenido());
            oMysql.updateOne(oEntradaBean.getId(), "entrada", "fecha", dFormat.format(oEntradaBean.getFecha()));
            oMysql.commitTrans();
        } catch (Exception e) {
            oMysql.rollbackTrans();
            throw new Exception("EntradaDao.setEntrada: Error: " + e.getMessage());
        } finally {
            oMysql.desconexion();
        }
    }

    public void remove(EntradaBean oEntradaBean) throws Exception {
        try {
            oMysql.conexion(enumTipoConexion);
            oMysql.removeOne(oEntradaBean.getId(), "entrada");
            oMysql.desconexion();
        } catch (Exception e) {
            throw new Exception("EntradaDao.removeEntrada: Error: " + e.getMessage());
        } finally {
            oMysql.desconexion();
        }
    }
}
