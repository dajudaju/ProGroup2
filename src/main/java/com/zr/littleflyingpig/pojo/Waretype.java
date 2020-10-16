package com.zr.littleflyingpig.pojo;

import java.io.Serializable;

/**
 * waretype 实体类
 * 
 * @author 幻想
 *
 */
@SuppressWarnings("serial")
public class Waretype implements Serializable {

	// 商品类别id t_id
	private int t_id;
	// 商品类别名称 t_name
	private String t_name;

	/**
	 * 有参构造方法
	 * 
	 * @param t_id
	 * @param t_name
	 */
	public Waretype(int t_id, String t_name) {
		super();
		this.t_id = t_id;
		this.t_name = t_name;
	}

	/**
	 * 空参构造器方法
	 */
	public Waretype() {
		super();
	}

	public int getT_id() {
		return t_id;
	}

	public void setT_id(int t_id) {
		this.t_id = t_id;
	}

	public String getT_name() {
		return t_name;
	}

	public void setT_name(String t_name) {
		this.t_name = t_name;
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
		if (obj instanceof Waretype) {
			Waretype t = (Waretype) obj;
			if (t.getT_id() == this.t_id) {
				return true;
			}
		}
		return false;
	}

	@Override
	public String toString() {
		return "Waretype [t_id=" + t_id + ", t_name=" + t_name + "]";
	}

}
