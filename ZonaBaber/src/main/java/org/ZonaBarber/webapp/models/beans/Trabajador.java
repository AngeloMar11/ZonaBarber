package org.ZonaBarber.webapp.models.beans;

public class Trabajador {
    private String Nombre;

    private String Direccion;


    private String  Correo;


    private String  Genero;

    private String Tipo_servicio;

    private String Foto;
    private int Rol;
    private String Descripcion;
    private String Contrasena;


    public Trabajador(String nombre, String direccion, String correo, String genero, String tipo_servicio, String foto, int rol, String descripcion, String contrasena) {
        Nombre = nombre;
        Direccion = direccion;
        Correo = correo;
        Genero = genero;
        Tipo_servicio = tipo_servicio;
        Foto = foto;
        Rol = rol;
        Descripcion = descripcion;
        Contrasena = contrasena;
    }

    public String getNombre() {
        return Nombre;
    }

    public void setNombre(String nombre) {
        Nombre = nombre;
    }

    public String getDireccion() {
        return Direccion;
    }

    public void setDireccion(String direccion) {
        Direccion = direccion;
    }

    public String getCorreo() {
        return Correo;
    }

    public void setCorreo(String correo) {
        Correo = correo;
    }

    public String getGenero() {
        return Genero;
    }

    public void setGenero(String genero) {
        Genero = genero;
    }

    public String getTipo_servicio() {
        return Tipo_servicio;
    }

    public void setTipo_servicio(String tipo_servicio) {
        Tipo_servicio = tipo_servicio;
    }

    public String getFoto() {
        return Foto;
    }

    public void setFoto(String foto) {
        Foto = foto;
    }

    public int getRol() {
        return Rol;
    }

    public void setRol(int rol) {
        Rol = rol;
    }

    public String getDescripcion() {
        return Descripcion;
    }

    public void setDescripcion(String descripcion) {
        Descripcion = descripcion;
    }

    public String getContrasena() {
        return Contrasena;
    }

    public void setContrasena(String contrasena) {
        Contrasena = contrasena;
    }
}

