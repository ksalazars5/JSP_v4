/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package modelo;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.HashMap;

/**
 *
 * @author salaz
 */
public class Empleado extends Persona {
    private String codigo;
    private int id_puesto;
    private conexion cn;
   
    public Empleado() {
    }

    public Empleado(String codigo, int id_puesto, int id, String nombres, String apellidos, String direccion, String telefono, String fecha_nacimiento) {
        super(id, nombres, apellidos, direccion, telefono, fecha_nacimiento);
        this.codigo = codigo;
        this.id_puesto = id_puesto;
    }

    public String getCodigo() {
        return codigo;
    }

    public void setCodigo(String codigo) {
        this.codigo = codigo;
    }

    public int getId_puesto() {
        return id_puesto;
    }

    public void setId_puesto(int id_puesto) {
        this.id_puesto = id_puesto;
    }

    public HashMap drop_sangre(){
    HashMap<String,String> drop = new HashMap ();
    try{
        cn = new conexion();
        String query = "SELECT id_puesto as id, puesto FROM bd_empresa.puestos;";
        cn.abirir_Conexion();
        ResultSet consulta = cn.conexion.createStatement().executeQuery(query);
        while (consulta.next()){
           drop.put(consulta.getString("id"), consulta.getString("puesto"));
        }
        cn.cerrar_Conexion();
    }catch(Exception ex){
        System.out.println(ex.getMessage());
    }
    return drop;
    }
    
    @Override
    public void agregar (){}
    

    
    
    
}
