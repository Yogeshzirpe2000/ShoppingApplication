package shoppingapp.repository;

import shoppingapp.model.LoginModel;

public interface ValidateUserRepository {
	public boolean isValidate(LoginModel model);
}
