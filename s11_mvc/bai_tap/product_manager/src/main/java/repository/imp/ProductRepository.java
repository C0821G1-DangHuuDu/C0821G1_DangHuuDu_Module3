package repository.imp;

import model.Product;
import repository.IProductRepository;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class ProductRepository implements IProductRepository {

private static Map<Integer,Product> productMap = new HashMap<>();
static {
    productMap.put(1,new Product(1,"Iphone 12",10000000,"new","Iphone"));
    productMap.put(2,new Product(2,"Iphone 11",80000000,"new","Iphone"));
    productMap.put(3,new Product(3,"Samsung Note 9",90000000,"new","Samsung"));

}

    @Override
    public List<Product> getAll() {
        return new ArrayList<>(productMap.values());
    }

    @Override
    public void saveNewProduct(Product product) {
        productMap.put(product.getId(),product);
    }

    @Override
    public void editProduct(Product product) {
        productMap.put(product.getId(),product);

    }

    @Override
    public void deleteProduct(Product productDelete) {
        productMap.remove(productDelete.getId());
    }
}
