package com.zr.littleflyingpig.pojo;

import java.io.Serializable;

/**
 * address 实体类
 * 
 * @author 幻想
 *
 */
@SuppressWarnings("serial")
public class Address implements Serializable {

	// 地址主键编号 a_id
	private int a_id;
	// 用户主键编号 c_id
	private int c_id;
	// 地址详细 a_name
	private String a_name;

	/**
	 * 有参构造方法
	 * 
	 * @param a_id
	 * @param c_id
	 * @param a_name
	 */
	public Address(int a_id, int c_id, String a_name) {
		super();
		this.a_id = a_id;
		this.c_id = c_id;
		this.a_name = a_name;
	}

	/**
	 * 无参构造方法
	 */
	public Address() {
		super();
	}

	public int getA_id() {
		return a_id;
	}

	public void setA_id(int a_id) {
		this.a_id = a_id;
	}

	public int getC_id() {
		return c_id;
	}

	public void setC_id(int c_id) {
		this.c_id = c_id;
	}

	public String getA_name() {
		return a_name;
	}

	public void setA_name(String a_name) {
		this.a_name = a_name;
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
		if (obj instanceof Address) {
			Address a = (Address) obj;
			if (a.getA_id() == this.a_id) {
				return true;
			}
		}
		return false;
	}

	@Override
	public String toString() {
		return "address [a_id=" + a_id + ", c_id=" + c_id + ", a_name=" + a_name + "]";
	}

}
