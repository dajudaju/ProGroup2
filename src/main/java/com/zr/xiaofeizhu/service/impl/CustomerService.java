package com.zr.xiaofeizhu.service.impl;


import java.util.List;

import com.zr.xiaofeizhu.dao.ICustomerDao;
import com.zr.xiaofeizhu.dao.impl.CustomerDao;
import com.zr.xiaofeizhu.pojo.Customer;
import com.zr.xiaofeizhu.service.ICustomerService;

/**
 * 用户的服务接口，包含一系列针对用户的方法。
 *Customer：用户的实体类，根据数据库中tb_customer表建立的。
 */
public class CustomerService implements ICustomerService {
	/**
	 * 
	 */
	
	  private ICustomerDao dao = new CustomerDao();

	@Override
	public Customer login(String c_name, String c_password) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public boolean register(Customer customer) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean updateCustomer(Customer customer) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public Customer findCustomerById(int c_id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Customer> findAllCustomer() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Customer> findCustomersByString(String c_name) {
		// TODO Auto-generated method stub
		return null;
	}
	
}
