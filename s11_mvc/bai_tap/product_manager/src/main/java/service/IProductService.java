package service;

import model.Product;

import java.util.List;

public interface IProductService {


    List<Product> getAll();

    void saveNewProduct(Product product);

    void editProduct(Product product);

    void deleteProduct(Product productDelete);
}
