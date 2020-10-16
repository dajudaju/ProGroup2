package com.zr.littleflyingpig.pojo;

import java.io.Serializable;

/**
 * warecustomer 实体类
 * 
 * @author 幻想
 *
 */
@SuppressWarnings("serial")
public class WareCustomer implements Serializable {

	// 用户主键编号 联合主键（外键）c_id
	private int c_id;
	// 商品主键编号 联合主键（外键）w_id
	private int w_id;
	// 收藏状态 0：未收藏 1：已收藏
	private byte collect;
	// 购物车 0：未加入购物车 1：已加入购物车
	private byte trolley;
	// 商品数量
	private int number;

	/**
	 * 有参构造方法
	 * 
	 * @param c_id
	 * @param w_id
	 * @param collect
	 * @param trolley
	 * @param number
	 */
	public WareCustomer(int c_id, int w_id, byte collect, byte trolley, int number) {
		super();
		this.c_id = c_id;
		this.w_id = w_id;
		this.collect = collect;
		this.trolley = trolley;
		this.number = number;
	}

	/**
	 * 无参构造方法
	 */
	public WareCustomer() {
		super();
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

	public void setCollect(byte collect) {
		this.collect = collect;
	}

	public int getTrolley() {
		return trolley;
	}

	public void setTrolley(byte trolley) {
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
		return super.hashCode();
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (obj instanceof WareCustomer) {
			WareCustomer ws = (WareCustomer) obj;
			if (ws.getC_id() == this.c_id && ws.getW_id() == this.w_id) {
				return true;
			}
		}
		return false;
	}

	@Override
	public String toString() {
		return "Warecustomer [c_id=" + c_id + ", w_id=" + w_id + ", collect=" + collect + ", trolley=" + trolley
				+ ", number=" + number + "]";
	}

}
