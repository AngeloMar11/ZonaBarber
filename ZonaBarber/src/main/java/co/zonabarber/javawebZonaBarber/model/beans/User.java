package co.zonabarber.javawebZonaBarber.model.beans;

public class User {

    private Integer id_user;
    private String nombre;
    private String Apellido;

    private String Direccion;

    private  String Tipo_Indent;

    private String numero_int;

    private  String celular;

    private String correo;
    private String password;

    public User() {
    }

    public User(Integer id_user, String nombre, String apellido, String direccion, String tipo_Indent, String numero_int, String celular, String correo, String password) {
        this.id_user = id_user;
        this.nombre = nombre;
        Apellido = apellido;
        Direccion = direccion;
        Tipo_Indent = tipo_Indent;
        this.numero_int = numero_int;
        this.celular = celular;
        this.correo = correo;
        this.password = password;
    }

    public Integer getId_user() {
        return id_user;
    }

    public void setId_user(Integer id_user) {
        this.id_user = id_user;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getApellido() {
        return Apellido;
    }

    public void setApellido(String apellido) {
        Apellido = apellido;
    }

    public String getDireccion() {
        return Direccion;
    }

    public void setDireccion(String direccion) {
        Direccion = direccion;
    }

    public String getTipo_Indent() {
        return Tipo_Indent;
    }

    public void setTipo_Indent(String tipo_Indent) {
        Tipo_Indent = tipo_Indent;
    }

    public String getNumero_int() {
        return numero_int;
    }

    public void setNumero_int(String numero_int) {
        this.numero_int = numero_int;
    }

    public String getCelular() {
        return celular;
    }

    public void setCelular(String celular) {
        this.celular = celular;
    }

    public String getCorreo() {
        return correo;
    }

    public void setCorreo(String correo) {
        this.correo = correo;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    @Override
    public String toString() {
        return "User{" +
                "id_user=" + id_user +
                ", nombre='" + nombre + '\'' +
                ", Apellido='" + Apellido + '\'' +
                ", Direccion='" + Direccion + '\'' +
                ", Tipo_Indent='" + Tipo_Indent + '\'' +
                ", numero_int='" + numero_int + '\'' +
                ", celular='" + celular + '\'' +
                ", correo='" + correo + '\'' +
                ", password='" + password + '\'' +
                '}';
    }
}
