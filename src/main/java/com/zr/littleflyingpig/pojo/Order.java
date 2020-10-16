package com.zr.littleflyingpig.pojo;

import java.io.Serializable;
import java.util.Date;

/**
 * order 实体类
 * 
 * @author 幻想
 *
 */
@SuppressWarnings("serial")
public class Order implements Serializable {

	// 订单主键编号 o_id
	private int o_id;
	// 用户主键编号 外键 c_id
	private int c_id;
	// 商品主键编号 外键 w_id
	private int w_id;
	// 地址主键编号 外键 a_id
	private int a_id;
	// 订单编号 o_number
	private String o_number;
	// 订单收货人 o_consignee
	private String o_consignee;
	// 收货人电话 o_tel
	private String o_tel;
	// 购买数量 o_count
	private int o_count;
	// 订单总金额 o_price
	private double o_price;
	// 购买时间 o_date
	private Date o_date;
	// 订单状态 0：未发 1：已发货 2：已完成 3：待退款 4：已退款
	private byte o_state;

	/**
	 * 有参构造方法
	 * 
	 * @param o_id
	 * @param c_id
	 * @param w_id
	 * @param a_id
	 * @param o_number
	 * @param o_consignee
	 * @param o_tel
	 * @param o_count
	 * @param o_price
	 * @param o_date
	 * @param o_state
	 */
	public Order(int o_id, int c_id, int w_id, int a_id, String o_number, String o_consignee, String o_tel, int o_count,
			double o_price, Date o_date, byte o_state) {
		super();
		this.o_id = o_id;
		this.c_id = c_id;
		this.w_id = w_id;
		this.a_id = a_id;
		this.o_number = o_number;
		this.o_consignee = o_consignee;
		this.o_tel = o_tel;
		this.o_count = o_count;
		this.o_price = o_price;
		this.o_date = o_date;
		this.o_state = o_state;
	}

	/**
	 * 空参构造方法
	 * 
	 */
	public Order() {
		super();
	}

	public int getO_id() {
		return o_id;
	}

	public void setO_id(int o_id) {
		this.o_id = o_id;
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

	public int getA_id() {
		return a_id;
	}

	public void setA_id(int a_id) {
		this.a_id = a_id;
	}

	public String getO_number() {
		return o_number;
	}

	public void setO_number(String o_number) {
		this.o_number = o_number;
	}

	public String getO_consignee() {
		return o_consignee;
	}

	public void setO_consignee(String o_consignee) {
		this.o_consignee = o_consignee;
	}

	public String getO_tel() {
		return o_tel;
	}

	public void setO_tel(String o_tel) {
		this.o_tel = o_tel;
	}

	public int getO_count() {
		return o_count;
	}

	public void setO_count(int o_count) {
		this.o_count = o_count;
	}

	public double getO_price() {
		return o_price;
	}

	public void setO_price(double o_price) {
		this.o_price = o_price;
	}

	public Date getO_date() {
		return o_date;
	}

	public void setO_date(Date o_date) {
		this.o_date = o_date;
	}

	public byte getO_state() {
		return o_state;
	}

	public void setO_state(byte o_state) {
		this.o_state = o_state;
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
		if (obj instanceof Order) {
			Order o = (Order) obj;
			if (o.getO_id() == this.o_id) {
				return true;
			}
		}
		return false;
	}

	@Override
	public String toString() {
		return "Order [o_id=" + o_id + ", c_id=" + c_id + ", w_id=" + w_id + ", a_id=" + a_id + ", o_number=" + o_number
				+ ", o_consignee=" + o_consignee + ", o_tel=" + o_tel + ", o_count=" + o_count + ", o_price=" + o_price
				+ ", o_date=" + o_date + ", o_state=" + o_state + "]";
	}

}
