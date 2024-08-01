package shoppingapp.service;

import shoppingapp.model.RegistrationModel;
import shoppingapp.repository.*;
public class RegistrationServiceImpl implements RegistrationService{
	RegistrationRepository rReppo = new RegistrationRepositioryImpl();
	@Override
	public boolean isRegister(RegistrationModel model) {
		// TODO Auto-generated method stub
		return rReppo.isRegister(model);
	}

}
