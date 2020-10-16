package com.zr.littleflyingpig.service.impl;

import java.util.List;

import com.zr.littleflyingpig.dao.IAddressDao;
import com.zr.littleflyingpig.dao.impl.AddressDao;
import com.zr.littleflyingpig.pojo.Address;
import com.zr.littleflyingpig.service.IAddressService;

/**
 * 收获地址服务接口实现类
 * 
 * @author Administrator
 *
 */
public class AddressService implements IAddressService {

	// 获取收获地址dao层接口
	private IAddressDao dao = new AddressDao();

	@Override
	public boolean addAddress(Address address) {

		return dao.addAddress(address);
	}

	@Override
	public boolean updateAddress(Address address) {

		return dao.updateAddress(address);
	}

	@Override
	public boolean deleteAddress(int a_id) {

		return dao.deleteAddress(a_id);
	}

	@Override
	public Address findAddressById(int a_id) {

		return dao.findAddressById(a_id);
	}

	@Override
	public List<Address> findAddressesByCid(int c_id) {

		return dao.findAddressesByCid(c_id);
	}

}
