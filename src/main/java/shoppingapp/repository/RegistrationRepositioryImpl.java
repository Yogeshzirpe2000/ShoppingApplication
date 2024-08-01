package shoppingapp.repository;

import shoppingapp.model.RegistrationModel;

public class RegistrationRepositioryImpl extends DBParent implements RegistrationRepository{

	@Override
	public boolean isRegister(RegistrationModel model) {
		try {
			stmt=conn.prepareStatement("insert into login values('0',?,?,?,?,?)");
			stmt.setString(1, model.getName());
			stmt.setString(2, model.getEmail());
			stmt.setString(3,model.getContact());
			stmt.setString(4, model.getUsername());
			stmt.setString(5,model.getPassword());
			int value = stmt.executeUpdate();
			return value>0?true:false;
		}catch(Exception ex) {
			System.out.println("Exception is "+ex);
			return false;
		}
	}

}
