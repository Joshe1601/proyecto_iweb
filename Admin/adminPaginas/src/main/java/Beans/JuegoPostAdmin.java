package Beans;

public class JuegoPostAdmin extends Juegos {
    private int id_publicacion_admin;
    private int id_administrador;
    private int id_juego_posteado;
    private int unidades_juego_publicacion;
    private float precio_venta_por_unidad;
    private String fecha_publicacion;
    private int juego_retirado;
    private String oferta_del_juego;
    private float oferta_descuento;
    private int juego_necesario;

    public JuegoPostAdmin(String nombre, String genero, float precio_unidad, String imagen) {
        super(nombre, genero, precio_unidad, imagen);
    }


    //public JuegoPostAdmin(String nombre, String genero, float precio_unidad) {
    //    super(nombre, genero, precio_unidad);
    //}


    public int getId_publicacion_admin() {
        return id_publicacion_admin;
    }

    public void setId_publicacion_admin(int id_publicacion_admin) {
        this.id_publicacion_admin = id_publicacion_admin;
    }

    public int getId_administrador() {
        return id_administrador;
    }

    public void setId_administrador(int id_administrador) {
        this.id_administrador = id_administrador;
    }

    public int getId_juego_posteado() {
        return id_juego_posteado;
    }

    public void setId_juego_posteado(int id_juego_posteado) {
        this.id_juego_posteado = id_juego_posteado;
    }

    public int getUnidades_juego_publicacion() {
        return unidades_juego_publicacion;
    }

    public void setUnidades_juego_publicacion(int unidades_juego_publicacion) {
        this.unidades_juego_publicacion = unidades_juego_publicacion;
    }

    public float getPrecio_venta_por_unidad() {
        return precio_venta_por_unidad;
    }

    public void setPrecio_venta_por_unidad(float precio_venta_por_unidad) {
        this.precio_venta_por_unidad = precio_venta_por_unidad;
    }

    public String getFecha_publicacion() {
        return fecha_publicacion;
    }

    public void setFecha_publicacion(String fecha_publicacion) {
        this.fecha_publicacion = fecha_publicacion;
    }

    public int getJuego_retirado() {
        return juego_retirado;
    }

    public void setJuego_retirado(int juego_retirado) {
        this.juego_retirado = juego_retirado;
    }

    public String getOferta_del_juego() {
        return oferta_del_juego;
    }

    public void setOferta_del_juego(String oferta_del_juego) {
        this.oferta_del_juego = oferta_del_juego;
    }

    public float getOferta_descuento() {
        return oferta_descuento;
    }

    public void setOferta_descuento(float oferta_descuento) {
        this.oferta_descuento = oferta_descuento;
    }

    public int getJuego_necesario() {
        return juego_necesario;
    }

    public void setJuego_necesario(int juego_necesario) {
        this.juego_necesario = juego_necesario;
    }
}
