package service;

import model.Product;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class ProductServiceImpl implements ProductService {

    private static Map<Integer, Product> products;

    static {
        products = new HashMap<>();
        products.put(1, new Product(1, "OMO", 70000, 200));
        products.put(2, new Product(2, "LifeBoy", 35000, 1000));
        products.put(3, new Product(3, "Head&Shoulder", 30000, 400));
        products.put(4, new Product(4, "Romano", 89000, 120));
        products.put(5, new Product(5, "Fanta", 8000, 4000));
        products.put(6, new Product(6, "Pepsi", 7000, 5000));
        products.put(7, new Product(7, "Coca Cola", 7000, 2000));
        products.put(8, new Product(8, "Merinda", 8000, 6000));
        products.put(9, new Product(9, "Con Ga", 200000, 2300));
        products.put(10, new Product(10, "Con Vit", 180000, 2100));
        products.put(11, new Product(11, "Gai", 300000000, 20));
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
    public Product findByID(int id) {
        return products.get(id);
    }

    @Override
    public void update(int id, Product product) {
        products.put(id, product);
    }

    @Override
    public void remove(int id) {
        products.remove(id);
    }

    @Override
    public int getNewKey() {
        int newKey;
        while (true) {
            newKey = (int) (Math.random() * 10000);
            if (!products.containsKey(newKey)) {
                return newKey;
            }
        }
    }
}