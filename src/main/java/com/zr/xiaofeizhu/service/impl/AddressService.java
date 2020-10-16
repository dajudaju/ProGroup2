package com.zr.xiaofeizhu.service.impl;

import java.util.List;

import com.zr.xiaofeizhu.dao.IAddressDao;
import com.zr.xiaofeizhu.dao.impl.AddressDao;
import com.zr.xiaofeizhu.pojo.Address;
import com.zr.xiaofeizhu.service.IAddressService;

public class AddressService implements IAddressService{

	private IAddressDao dao=new AddressDao();
	
	@Override
	public boolean addAddress(Address address) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean updateAddress(Address address) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean deleteAddress(int a_id) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public Address findAddressById(int a_id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Address> findAddressesByCid(int c_id) {
		// TODO Auto-generated method stub
		return null;
	}

}
