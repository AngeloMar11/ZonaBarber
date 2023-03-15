package org.ZonaBarber.webapp.models.repositories;

import org.ZonaBarber.webapp.models.beans.Clientes;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class ClientesRepositoryJdbcImpl implements Repository<Clientes> {

    private Connection conn;
    public ClientesRepositoryJdbcImpl(Connection conn) {
        this.conn = conn;
    }
    @Override
    public List<Clientes> listar() throws SQLException {
        return null;
    }

    @Override
    public Clientes porId(int id) throws SQLException {
        return null;
    }

    @Override
    public void guardar(Clientes clientes) throws SQLException {
        String sql;

        sql = "INSERT INTO tblclientes(Nombre, Apellido, Direccion, identificacion, tipo_identifiacion, Celular, Correo" +
                "Contraseña) values (?,?,?,?,?,?,?,?)";
        try(PreparedStatement stm = conn.prepareStatement(sql))
        {
            stm.setString(1, clientes.getNombre());
            stm.setString(2, clientes.getApellido());
            stm.setString(3, clientes.getDireccion());
            stm.setString(4, clientes.getIdentificacion());
            stm.setString(5, clientes.getTipo_identificacion());
            stm.setString(6, clientes.getCelular());
            stm.setString(7, clientes.getCorreo());
            stm.setString(8, clientes.getContraseña());

        }

    }

    @Override
    public void eliminar(Long id) throws SQLException {

    }
    private Clientes getProducto(ResultSet rs) throws SQLException {
        Clientes c = new Clientes();
        c.setNombre(rs.getString("Nombre"));
        c.setApellido(rs.getString("Apellido"));
        c.setDireccion(rs.getString("Direccion"));
        c.setIdentificacion(rs.getString("identifiacion"));
        c.setTipo_identificacion(rs.getString( "tipo_identifiacion"));
        c.setCelular(rs.getString("Celular"));
        c.setCorreo(rs.getString("Correo"));
        c.setContraseña(rs.getString("Contraseña"));

        return c;
    }

}
