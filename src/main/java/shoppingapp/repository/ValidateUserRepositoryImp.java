package shoppingapp.repository;

import java.io.InputStream;

import shoppingapp.model.LoginModel;

public class ValidateUserRepositoryImp extends DBParent implements ValidateUserRepository {

	public boolean isValidate(LoginModel model) {
		try {
			stmt = conn.prepareStatement("select * from login where username=? and password=?");
			stmt.setString(1, model.getUserName());
			stmt.setString(2, model.getPassword());
			rs = stmt.executeQuery();
			if (rs.next()) {
				return true;
			} else {
				return false;
			}
		} catch (Exception ex) {
			System.out.println("Error is " + ex);
			return false;
		}
	}

}
