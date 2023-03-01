package co.zonabarber.javawebZonaBarber.model.repository;

import co.zonabarber.javawebZonaBarber.model.beans.User;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import static co.zonabarber.javawebZonaBarber.util.DBconnection.getConnection;

public class UserRepositoryImp implements Repository<User> {

    String sql;
    @Override
    public List<User> listAll() throws SQLException {
        sql = "SELECT * FROM users";
        List<User> Users = new ArrayList<>();
        try (PreparedStatement ps = getConnection().prepareStatement(sql); ResultSet rs = ps.executeQuery()) {
            while (rs.next()) {
                User u = createObj(rs);
                Users.add(u);
            }
        }
        return Users;
    }

    @Override
    public User byId(Integer id) throws SQLException {
        return null;
    }

    @Override
    public void save(User user) throws SQLException {
        sql = "INSERT INTO users (username, password) VALUES (?,?)";
        try (PreparedStatement ps = getConnection().prepareStatement(sql); ResultSet sr = ps.executeQuery()){

            ps.setString(1, user.getNombre());
            ps.setString(2, user.getPassword());
        }

    }

    @Override
    public void delete(User id) throws SQLException {

    }

    @Override
    public User createObj(ResultSet rs) throws SQLException {
        User u = new User();
        u.setId_user(rs.getInt("id"));
        u.setNombre(rs.getString("username"));
        u.setPassword(rs.getString("password"));
        return u;
    }
}
