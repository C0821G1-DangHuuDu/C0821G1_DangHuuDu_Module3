package service.imp;

import model.Product;
import repository.IProductRepository;
import repository.imp.ProductRepository;
import service.IProductService;

import java.util.List;

public class ProductService implements IProductService {

private static IProductRepository productRepository = new ProductRepository();

    @Override
    public List<Product> getAll() {
        List<Product> productList = productRepository.getAll();
        try {
            if (productList.size() == 0) {
                return null;
            }
            return productList;
        } catch (Exception e){
            System.out.println("Gặp lỗi tại getAll");
            return null;
        }
    }

    @Override
    public void saveNewProduct(Product product) {
        productRepository.saveNewProduct(product);
    }

    @Override
    public void editProduct(Product product) {
        productRepository.editProduct(product);
    }

    @Override
    public void deleteProduct(Product productDelete) {
        productRepository.deleteProduct(productDelete);
    }
}
