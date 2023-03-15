package org.ZonaBarber.webapp.models.services;

import org.ZonaBarber.webapp.models.beans.Clientes;

import java.util.List;
import java.util.Optional;

public interface ClientesServices {

    List<Clientes> listar();

    Optional<Clientes> porId(int id);

    void guardar(Clientes clientes);

    void eliminar(int id);



}
