package model;

public class Product {
    private int id;
    private String nameProduct;
    private double priceProduct;
    private String detailProduct;
    private String factoryProduct;

    public Product() {
    }

    public Product(int id, String nameProduct, double priceProduct, String detailProduct, String factoryProduct) {
        this.id = id;
        this.nameProduct = nameProduct;
        this.priceProduct = priceProduct;
        this.detailProduct = detailProduct;
        this.factoryProduct = factoryProduct;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getNameProduct() {
        return nameProduct;
    }

    public void setNameProduct(String nameProduct) {
        this.nameProduct = nameProduct;
    }

    public double getPriceProduct() {
        return priceProduct;
    }

    public void setPriceProduct(double priceProduct) {
        this.priceProduct = priceProduct;
    }

    public String getDetailProduct() {
        return detailProduct;
    }

    public void setDetailProduct(String detailProduct) {
        this.detailProduct = detailProduct;
    }

    public String getFactoryProduct() {
        return factoryProduct;
    }

    public void setFactoryProduct(String factoryProduct) {
        this.factoryProduct = factoryProduct;
    }
}
