package com.zr.littleflyingpig.service.impl;

import java.util.List;

import com.zr.littleflyingpig.dao.ICustomerDao;
import com.zr.littleflyingpig.dao.impl.CustomerDao;
import com.zr.littleflyingpig.pojo.Customer;
import com.zr.littleflyingpig.service.ICustomerService;

/**
 * 用户的服务接口实现类
 * 
 * @author Administrator
 *
 */
public class CustomerService implements ICustomerService {

	// 获取用户的dao层接口
	private ICustomerDao dao = new CustomerDao();

	@Override
	public Customer login(String c_name, String c_password) {

		return dao.login(c_name, c_password);
	}

	@Override
	public boolean register(Customer customer) {

		return dao.register(customer);
	}

	@Override
	public boolean updateCustomer(Customer customer) {

		return dao.updateCustomer(customer);
	}

	@Override
	public Customer findCustomerById(int c_id) {

		return dao.findCustomerById(c_id);
	}

	@Override
	public List<Customer> findAllCustomer() {

		return dao.findAllCustomer();
	}

	@Override
	public List<Customer> findCustomersByString(String c_name) {
		
		return dao.findCustomersByString(c_name);
	}

}
