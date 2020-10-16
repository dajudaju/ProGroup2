package com.zr.littleflyingpig.service.impl;

import java.util.List;

import com.zr.littleflyingpig.dao.IAddressDao;
import com.zr.littleflyingpig.dao.impl.AddressDao;
import com.zr.littleflyingpig.pojo.Address;
import com.zr.littleflyingpig.service.IAddressService;

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
