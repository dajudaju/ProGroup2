package com.zr.xiaofeizhu.dao.impl;

import java.util.List;

import com.zr.xiaofeizhu.dao.ICustomerDao;
import com.zr.xiaofeizhu.pojo.Customer;


public class CustomerDao implements ICustomerDao{
	
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