package shoppingapp.service;

import java.io.InputStream;
import java.util.List;

import shoppingapp.model.ProductModel;

public interface ProductService {
	public List<ProductModel> getProducts();
	public InputStream getimage(int id);
}
