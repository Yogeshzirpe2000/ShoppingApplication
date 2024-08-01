package shoppingapp.service;
import java.io.InputStream;
import java.util.List;

import shoppingapp.model.ProductModel;
import shoppingapp.repository.ProductRepository;
import shoppingapp.repository.ProductRepositoryImpl;
public class ProductServiceImpl implements ProductService{
	ProductRepository proReppo=  new ProductRepositoryImpl();
	public List<ProductModel> getProducts() {
		return proReppo.getProducts();
	}
	public InputStream getimage(int id) {
		return proReppo.getimage(id);
	}
}
