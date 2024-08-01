package shoppingapp.repository;

import java.io.InputStream;
import java.util.ArrayList;
import java.util.List;

import shoppingapp.model.ProductModel;

public class ProductRepositoryImpl extends DBParent implements ProductRepository {
	ProductModel model= new ProductModel();
	@Override
	public List<ProductModel> getProducts() {
		List<ProductModel> list = new ArrayList<ProductModel>();
		try {
			stmt=conn.prepareStatement("select * from product");
			rs=stmt.executeQuery();
			while(rs.next()) {
				model = new ProductModel();
				model.setId(rs.getInt("id"));
				model.setName(rs.getString("name"));
				model.setPrice(rs.getInt("price"));
			list.add(model);
			}
			return list.size()>0?list:null;	
		}
		catch(Exception ex) {
			System.out.println("Exception is+ ex");
			return null;
		}
	}
	
	public InputStream getimage(int id) {
		try {
			stmt = conn.prepareStatement("select img from product where id=?");
			stmt.setInt(1, id);
			rs = stmt.executeQuery();
			if (rs.next()) {
				return  rs.getBinaryStream("img");
			} else {
				return null;
			}
		} catch (Exception ex) {
			System.out.println("Error is " + ex);
			return null;
		}
	}


}
