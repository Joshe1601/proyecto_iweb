package Beans;

public class Juegos {
    private int idJuegos;
    private String nombre;
    private String imagen;
    private String descripcion;
    private String rating;
    private String genero;
    private String consola;
    private float precio_unidad;
    private String cantidad_stock;
    private Boolean estado_activo;

    public Juegos(String nombre, String genero, float precio_unidad, String imagen) {
        this.nombre = nombre;
        this.genero = genero;
        this.precio_unidad = precio_unidad;
        this.imagen = imagen;
    }

    public int getIdJuegos() {
        return idJuegos;
    }

    public void setIdJuegos(int idJuegos) {
        this.idJuegos = idJuegos;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getDescripcion() {
        return descripcion;
    }

    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }

    public String getRating() {
        return rating;
    }

    public void setRating(String rating) {
        this.rating = rating;
    }

    public String getGenero() {
        return genero;
    }

    public void setGenero(String genero) {
        this.genero = genero;
    }

    public String getConsola() {
        return consola;
    }

    public void setConsola(String consola) {
        this.consola = consola;
    }

    public float getPrecio_unidad() {
        return precio_unidad;
    }

    public String getImagen() {
        return imagen;
    }

    public void setImagen(String imagen) {
        this.imagen = imagen;
    }

    public void setPrecio_unidad(float precio_unidad) {
        this.precio_unidad = precio_unidad;
    }

    public String getCantidad_stock() {
        return cantidad_stock;
    }

    public void setCantidad_stock(String cantidad_stock) {
        this.cantidad_stock = cantidad_stock;
    }

    public Boolean getEstado_activo() {
        return estado_activo;
    }

    public void setEstado_activo(Boolean estado_activo) {
        this.estado_activo = estado_activo;
    }
}
