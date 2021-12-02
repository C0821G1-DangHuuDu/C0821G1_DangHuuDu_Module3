package repository;

import model.Product;

import java.util.List;

public interface IProductRepository {
    List<Product> getAll();

    void saveNewProduct(Product product);

    void editProduct(Product product);

    void deleteProduct(Product productDelete);
}
