package com.zr.littleflyingpig.pojo;

import java.io.Serializable;

/**
 * Customer 实体类
 * 
 * @author 幻想
 *
 */
@SuppressWarnings("serial")
public class Customer implements Serializable {

	// 用户id c_id
	private int c_id;
	// 用户名称 c_name
	private String c_name;
	// 用户密码 c_private
	private String c_password;
	// 用户性别 c_gender
	private byte c_gender;
	// 用户电话 c_tel
	private String c_tel;
	// 用户使用状态 c_state 0：禁用 1：激活
	private byte c_state;

	/**
	 * 有参构造
	 * 
	 * @param c_id
	 * @param c_name
	 * @param c_password
	 * @param c_gender
	 * @param c_tel
	 * @param c_state
	 */
	public Customer(int c_id, String c_name, String c_password, byte c_gender, String c_tel, byte c_state) {
		super();
		this.c_id = c_id;
		this.c_name = c_name;
		this.c_password = c_password;
		this.c_gender = c_gender;
		this.c_tel = c_tel;
		this.c_state = c_state;
	}

	/**
	 * 无参构造方法
	 */
	public Customer() {
		super();
	}

	public int getC_id() {
		return c_id;
	}

	public void setC_id(int c_id) {
		this.c_id = c_id;
	}

	public String getC_name() {
		return c_name;
	}

	public void setC_name(String c_name) {
		this.c_name = c_name;
	}

	public String getC_password() {
		return c_password;
	}

	public void setC_password(String c_password) {
		this.c_password = c_password;
	}

	public byte getC_gender() {
		return c_gender;
	}

	public void setC_gender(byte c_gender) {
		this.c_gender = c_gender;
	}

	public String getC_tel() {
		return c_tel;
	}

	public void setC_tel(String c_tel) {
		this.c_tel = c_tel;
	}

	public byte getC_state() {
		return c_state;
	}

	public void setC_state(byte c_state) {
		this.c_state = c_state;
	}

	@Override
	public int hashCode() {
		return super.hashCode();
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (obj instanceof Customer) {
			Customer c = (Customer) obj;
			if (c.getC_id() == this.c_id) {
				return true;
			}
		}

		return false;
	}

	@Override
	public String toString() {
		return "Customer [c_id=" + c_id + ", c_name=" + c_name + ", c_password=" + c_password + ", c_gender=" + c_gender
				+ ", c_tel=" + c_tel + ", c_state=" + c_state + "]";
	}

}
