package com.zr.littleflyingpig.pojo;

import java.io.Serializable;


/**
 * waretype 实体类
 * @author 幻想
 *
 */
@SuppressWarnings("serial")
public class Waretype implements Serializable{
	//商品类别id t_id
	private int t_id;
	//商品类别名称 t_name
	private String t_name;
	/**
	 * 有参构造方法
	 * @param t_id
	 * @param t_name
	 */
	public Waretype(int t_id, String t_name) {
		super();
		this.t_id = t_id;
		this.t_name = t_name;
	}
	//空参构造器方法
	public Waretype() {
		super();
		// TODO Auto-generated constructor stub
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
		final int prime = 31;
		int result = 1;
		result = prime * result + t_id;
		result = prime * result + ((t_name == null) ? 0 : t_name.hashCode());
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
		Waretype other = (Waretype) obj;
		if (t_id != other.t_id)
			return false;
		if (t_name == null) {
			if (other.t_name != null)
				return false;
		} else if (!t_name.equals(other.t_name))
			return false;
		return true;
	}
	@Override
	public String toString() {
		return "Waretype [t_id=" + t_id + ", t_name=" + t_name + "]";
	}
	
	
	
}
