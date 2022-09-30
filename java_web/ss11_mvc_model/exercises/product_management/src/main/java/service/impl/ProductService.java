package service.impl;

import model.Product;
import service.IProductService;

import java.util.*;

public class ProductService implements IProductService {
    private static Map<Integer, Product> products = new HashMap<>();

    static {
        products.put(1, new Product(1, "Iphone12", 5000, "Hot sale", "Apple"));
        products.put(2, new Product(2, "Iphone13", 6000, "Hot news", "Apple"));
        products.put(3, new Product(3, "XZ", 3000, "Cant sale", "Sony"));
        products.put(4, new Product(4, "Iphone13", 6000, "Hot news", "Apple"));
    }

    @Override
    public List<Product> findAll() {
        return new ArrayList<>(products.values());
    }

    @Override
    public void save(Product product) {
        products.put(product.getId(), product);
    }

    @Override
    public Product findById(int id) {
        return products.get(id);
    }

    @Override
    public List<Product> findByName(String name) {
        List<Product> productList = new ArrayList<>();
//        Set<Integer> productSet = products.keySet();
        for (Product product : products.values()) {
            if (product.getName().equals(name)) {
                productList.add(product);
            }
        }
        return productList;
    }

    @Override
    public void update(int id, Product product) {
        products.put(id, product);
    }

    @Override
    public void remove(int id) {
        products.remove(id);
    }
}
