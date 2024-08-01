package shoppingapp.service;

import shoppingapp.repository.ValidateUserRepositoryImp;

import java.util.List;

import shoppingapp.repository.ValidateUserRepository;
import shoppingapp.model.LoginModel;

public class ValidateUserServiceImp implements ValidateUserService {	
	ValidateUserRepository validRepo =  new ValidateUserRepositoryImp();
	public boolean isValidateUser(LoginModel model) {
		return validRepo.isValidate(model);
	}
}
