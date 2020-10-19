package com.zr.littleflyingpig.pojo;

import java.io.Serializable;

/**
 * ware 实体类
 * 
 * @author 幻想
 *
 */

@SuppressWarnings("serial")
public class Ware implements Serializable {

	// 商品w_id
	private int w_id;
	// 商品类别外键 t_id
	private int t_id;
	// 商品名称 w_name
	private String w_name;
	// 商品名称 w_brand 小飞猪
	private String w_brand;
	// 商品价格 w_price
	private double w_price;
	// 商品库存 w_repertory
	private int w_repertory;
	// 商品图片地址 w_url
	private String w_url;
	// 商品材料 w_material
	private String w_material;
	// 商品描述 w_describe
	private String w_describe;
	// 商品销量 w_sale
	private int w_sale;
	// 商品状态 0：未上架 1：已上架
	private byte w_state;

	/**
	 * 有参构造方法
	 * 
	 * @param w_id
	 * @param t_id
	 * @param w_name
	 * @param w_brand
	 * @param w_price
	 * @param w_repertory
	 * @param w_url
	 * @param w_material
	 * @param w_describe
	 * @param w_sale
	 * @param w_state
	 */
	public Ware(int w_id, int t_id, String w_name, String w_brand, double w_price, int w_repertory, String w_url,
			String w_material, String w_describe, int w_sale, byte w_state) {
		super();
		this.w_id = w_id;
		this.t_id = t_id;
		this.w_name = w_name;
		this.w_brand = w_brand;
		this.w_price = w_price;
		this.w_repertory = w_repertory;
		this.w_url = w_url;
		this.w_material = w_material;
		this.w_describe = w_describe;
		this.w_sale = w_sale;
		this.w_state = w_state;
	}

	/**
	 * 空参构造器
	 */
	public Ware() {
		super();
	}

	public int getW_id() {
		return w_id;
	}

	public void setW_id(int w_id) {
		this.w_id = w_id;
	}

	public int getT_id() {
		return t_id;
	}

	public void setT_id(int t_id) {
		this.t_id = t_id;
	}

	public String getW_name() {
		return w_name;
	}

	public void setW_name(String w_name) {
		this.w_name = w_name;
	}

	public String getW_brand() {
		return w_brand;
	}

	public void setW_brand(String w_brand) {
		this.w_brand = w_brand;
	}

	public double getW_price() {
		return w_price;
	}

	public void setW_price(double w_price) {
		this.w_price = w_price;
	}

	public int getW_repertory() {
		return w_repertory;
	}

	public void setW_repertory(int w_repertory) {
		this.w_repertory = w_repertory;
	}

	public String getW_url() {
		return w_url;
	}

	public void setW_url(String w_url) {
		this.w_url = w_url;
	}

	public String getW_material() {
		return w_material;
	}

	public void setW_material(String w_material) {
		this.w_material = w_material;
	}

	public String getW_describe() {
		return w_describe;
	}

	public void setW_describe(String w_describe) {
		this.w_describe = w_describe;
	}

	public int getW_sale() {
		return w_sale;
	}

	public void setW_sale(int w_sale) {
		this.w_sale = w_sale;
	}

	public byte getW_state() {
		return w_state;
	}

	public void setW_state(byte w_state) {
		this.w_state = w_state;
	}

	/*
	 * @Override public int hashCode() { return super.hashCode(); }
	 */

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (obj instanceof Ware) {
			Ware w = (Ware) obj;
			if (w.getW_id() == this.w_id) {
				return true;
			}
		}
		return false;
	}

	@Override
	public String toString() {
		return "Ware [w_id=" + w_id + ", t_id=" + t_id + ", w_name=" + w_name + ", w_brand=" + w_brand + ", w_price="
				+ w_price + ", w_repertory=" + w_repertory + ", w_url=" + w_url + ", w_material=" + w_material
				+ ", w_describe=" + w_describe + ", w_sale=" + w_sale + ", w_state=" + w_state + "]";
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + t_id;
		result = prime * result + ((w_brand == null) ? 0 : w_brand.hashCode());
		result = prime * result + ((w_describe == null) ? 0 : w_describe.hashCode());
		result = prime * result + w_id;
		result = prime * result + ((w_material == null) ? 0 : w_material.hashCode());
		result = prime * result + ((w_name == null) ? 0 : w_name.hashCode());
		long temp;
		temp = Double.doubleToLongBits(w_price);
		result = prime * result + (int) (temp ^ (temp >>> 32));
		result = prime * result + w_repertory;
		result = prime * result + w_sale;
		result = prime * result + w_state;
		result = prime * result + ((w_url == null) ? 0 : w_url.hashCode());
		return result;
	}

}
