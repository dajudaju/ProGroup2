package com.zr.xiaofeizhu.pojo;

import java.io.Serializable;

/**
 * warecustomer 实体类
 * @author 幻想
 *
 */
@SuppressWarnings("serial")
public class WareCustomer implements Serializable{
	//用户主键编号 联合主键（外键）c_id
	private int c_id;
	//商品主键编号 联合主键（外键）w_id
	private int w_id;
	//收藏状态 0：未收藏 1：已收藏 
	private int collect;
	//购物车  0：未加入购物车 1：已加入购物车
	private int trolley;
	//商品数量
	private int number;
	/**
	 * 有参构造方法
	 * @param c_id
	 * @param w_id
	 * @param collect
	 * @param trolley
	 * @param number
	 */
	public WareCustomer(int c_id, int w_id, int collect, int trolley, int number) {
		super();
		this.c_id = c_id;
		this.w_id = w_id;
		this.collect = collect;
		this.trolley = trolley;
		this.number = number;
	}
	//无参构造方法
	public WareCustomer() {
		super();
		// TODO Auto-generated constructor stub
	}
	public int getC_id() {
		return c_id;
	}
	public void setC_id(int c_id) {
		this.c_id = c_id;
	}
	public int getW_id() {
		return w_id;
	}
	public void setW_id(int w_id) {
		this.w_id = w_id;
	}
	public int getCollect() {
		return collect;
	}
	public void setCollect(int collect) {
		this.collect = collect;
	}
	public int getTrolley() {
		return trolley;
	}
	public void setTrolley(int trolley) {
		this.trolley = trolley;
	}
	public int getNumber() {
		return number;
	}
	public void setNumber(int number) {
		this.number = number;
	}
	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + c_id;
		result = prime * result + collect;
		result = prime * result + number;
		result = prime * result + trolley;
		result = prime * result + w_id;
		return result;
	}
	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		WareCustomer other = (WareCustomer) obj;
		if (c_id != other.c_id)
			return false;
		if (collect != other.collect)
			return false;
		if (number != other.number)
			return false;
		if (trolley != other.trolley)
			return false;
		if (w_id != other.w_id)
			return false;
		return true;
	}
	@Override
	public String toString() {
		return "Warecustomer [c_id=" + c_id + ", w_id=" + w_id + ", collect=" + collect + ", trolley=" + trolley
				+ ", number=" + number + "]";
	}
	
}
