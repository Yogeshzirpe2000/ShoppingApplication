package shoppingapp.repository;

import java.io.InputStream;
import java.util.List;

import shoppingapp.model.ProductModel;

public interface ProductRepository {
	public List<ProductModel> getProducts();
	public InputStream getimage(int id);
}
