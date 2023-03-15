package org.ZonaBarber.webapp.models.services;

import org.ZonaBarber.webapp.models.beans.Clientes;
import org.ZonaBarber.webapp.models.repositories.ClientesRepositoryJdbcImpl;
import org.ZonaBarber.webapp.models.repositories.Repository;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.List;
import java.util.Optional;

public class ClientesServicesJdbcImpl implements ClientesServices{

    private Repository<Clientes> repositoryJdbc;
    private Connection conn;

    public ClientesServicesJdbcImpl(Connection conn) {
        this.repositoryJdbc = new ClientesRepositoryJdbcImpl(conn);
    }

    @Override
    public List<Clientes> listar() {
        return null;
    }

    @Override
    public Optional<Clientes> porId(int id) {
        return Optional.empty();
    }

    @Override
    public void guardar(Clientes producto) {
        try {
            repositoryJdbc.guardar(producto);
        } catch (SQLException throwables) {
            throw new ServiceJdbcException(throwables.getMessage(), throwables.getCause());
        }
    }

    @Override
    public void eliminar(int id) {

    }


}
