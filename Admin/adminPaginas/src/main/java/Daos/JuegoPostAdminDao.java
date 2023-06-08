package Daos;

import Beans.JuegoPostAdmin;

import java.sql.*;
import java.util.ArrayList;

public class JuegoPostAdminDao {
    private static String user = "root";
    private static String pass = "123456";
    private static String url = "jdbc:mysql://127.0.0.1:3306/mydb";


    public ArrayList<JuegoPostAdmin> obtenerListaJuegosPosteados(){
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }

        String query = "select nombre, genero, precio_unidad, imagen from juegos";

        ArrayList<JuegoPostAdmin> listaJuegosPosteados = new ArrayList<>();
        try (Connection conn = DriverManager.getConnection(url, user, pass);
             Statement stmt = conn.createStatement();
             ResultSet rs = stmt.executeQuery(query)) {

            while (rs.next()) {
                String nombre = rs.getString(1);
                String genero = rs.getString(2);
                float precio = rs.getFloat(3);
                String imagen = rs.getString(4);

                listaJuegosPosteados.add(new JuegoPostAdmin(nombre,genero,precio,imagen));
            }

        } catch (SQLException throwables) {
            System.out.println("No se pudo realizar la busqueda");
            throwables.printStackTrace();
        }
        return listaJuegosPosteados;
    }
}
