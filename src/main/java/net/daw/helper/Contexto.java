package net.daw.helper;

import java.util.HashMap;
import java.util.Map;
import net.daw.bean.UsuarioBean;

public class Contexto {

    private HashMap<String, String> parameters;

    private HashMap<String, String> hmFilter;
    private HashMap<String, String> hmOrder;

    private String vista;

    private Object parametro;

    private Boolean haySesion;
    private UsuarioBean userBeanSession;

    private Enum.Connection enumTipoConexion;

    private void set(String strParam, String strValue) {
        Boolean entrado = false;
        for (Map.Entry<String, String> entry : this.parameters.entrySet()) {
            if (entry.getKey().equals(strParam)) {
                entry.setValue(strValue);
                entrado = true;
            }
        }
        if (!entrado) {
            this.parameters.put(strParam, strValue);
        }
    }

    private String get(String defaultValue, String strParam) {
        String resultado = defaultValue;
        for (Map.Entry<String, String> entry : this.parameters.entrySet()) {
            if (entry.getKey().equals(strParam)) {
                resultado = entry.getValue();
            }
        }
        return resultado;
    }

    private String getExcept(String strParam1, String strParam2) {
        String resultado = "";
        for (Map.Entry<String, String> entry : this.parameters.entrySet()) {
            String key = entry.getKey();
            String value = entry.getValue();
            if (!value.equalsIgnoreCase("")) {
                if (key.equals(strParam1) || key.equals(strParam2)) {
                } else {
                    resultado += key + "=" + value + "&";
                }
            }
        }
        return resultado.substring(0, resultado.length() - 1);
    }

    private String getExceptForm(String strParam1, String strParam2) {
        String resultado = "";
        for (Map.Entry<String, String> entry : this.parameters.entrySet()) {
            String key = entry.getKey();
            String value = entry.getValue();
            if (!value.equalsIgnoreCase("")) {
                if (key.equals(strParam1) || key.equals(strParam2)) {
                } else {
                    resultado += "<input type=\"hidden\" name=\"" + key + "\" value=\"" + value + "\"/>";
                }
            }
        }
        return resultado;
    }

    public void removeParam(String strParam) {
        this.parameters.remove(strParam);
    }

    public String getClase() {
        return get("usuario", "class");
    }

    public void setClase(String strClase) {
        this.set("class", strClase);
    }

    public String getMetodo() {
        return get("ocioso", "method");
    }

    public void setMetodo(String strMetodo) {
        this.set("method", strMetodo);
    }

    public String getFase() {
        return get("1", "phase");
    }

    public void setFase(String strFase) {
        this.set("phase", strFase);
    }

    public Integer getPage() {
        return Integer.parseInt(get("1", "page"));
    }

    public void setPage(Integer intPage) {
        this.set("page", intPage.toString());
    }

    public Integer getNrpp() {
        return Integer.parseInt(get("5", "nrpp"));
    }

    public void setNrpp(Integer intNrpp) {
        this.set("nrpp", intNrpp.toString());
    }

    public String getVista() {
        return vista;
    }

    public void setVista(String vista) {
        this.vista = vista;
    }

    public String getClaseRetorno() {
        return get("", "returnclass");
    }

    public void setClaseRetorno(String strClase) {
        this.set("returnclass", strClase);
    }

    public String getMetodoRetorno() {
        return get("", "returnmethod");
    }

    public void setMetodoRetorno(String strClase) {
        this.set("returnmethod", strClase);
    }

    public Object getParametro() {
        return parametro;
    }

    public void setParametro(Object parametro) {
        this.parametro = parametro;
    }

    public Boolean getHaySesion() {
        return haySesion;
    }

    public void setHaySesion(Boolean haySesion) {
        this.haySesion = haySesion;
    }

    public Enum.Connection getEnumTipoConexion() {
        return enumTipoConexion;
    }

    public void setEnumTipoConexion(Enum.Connection enumTipoConexion) {
        this.enumTipoConexion = enumTipoConexion;
    }

    public String getOperacion() {
        String strOperation = "";
        strOperation += Character.toUpperCase(this.getClase().charAt(0)) + this.getClase().substring(1);
        strOperation += Character.toUpperCase(this.getMetodo().charAt(0)) + this.getMetodo().substring(1);
        strOperation += this.getFase();
        return strOperation;
    }

    public Integer getId() {
        return Integer.parseInt(get("0", "id"));
    }

    public HashMap<String, String> getParameters() {
        return parameters;
    }

    public void setParameters(HashMap<String, String> parameters) {
        this.parameters = parameters;
    }

    public String getSerializedParams() {
        return getExcept("enviar", "enviar");
    }

    public String getSerializedParamsExceptId() {
        return getExcept("id", "id");
    }

    public String getSerializedParamsExceptMethod() {
        return getExcept("method", "method");
    }

    public String getSerializedParamsExceptPage() {
        return getExcept("page", "page");
    }

    public String getSerializedParamsExceptOrder() {
        return getExcept("order", "ordervalue");

    }

    public String getSerializedParamsExceptClassMethod() {
        return getExcept("class", "method");

    }

    public String getSerializedParamsExceptFilter() {
        return getExcept("filter", "filtervalue");
    }

    public String getSerializedParamsExceptFilterFormFormat() {
        return getExceptForm("filter", "filtervalue");
    }

    public String getSearchingFor() {
        return get("", "searchingfor");
    }

    public HashMap<String, String> getHmFilter() {
        return hmFilter;
    }

    public void setHmFilter(HashMap<String, String> hmFilter) {
        this.hmFilter = hmFilter;
    }

    public HashMap<String, String> getHmOrder() {
        return hmOrder;
    }

    public void setHmOrder(HashMap<String, String> hmOrder) {
        this.hmOrder = hmOrder;
    }

    public UsuarioBean getUserBeanSession() {
        return userBeanSession;
    }

    public void setUserBeanSession(UsuarioBean userBeanSession) {
        this.userBeanSession = userBeanSession;
    }

}
