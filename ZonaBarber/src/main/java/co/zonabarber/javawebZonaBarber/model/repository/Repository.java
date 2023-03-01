package co.zonabarber.javawebZonaBarber.model.repository;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

public interface Repository <T>{

    List<T> listAll() throws SQLException;

    T byId(Integer id) throws  SQLException;

    void save(T t) throws  SQLException;

    void delete(T id) throws SQLException;

    T createObj(ResultSet rs) throws SQLException;

}
