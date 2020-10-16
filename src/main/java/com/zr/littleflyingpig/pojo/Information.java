package com.zr.littleflyingpig.pojo;

import java.io.Serializable;
import java.util.Date;

/**
 * Information 实体类
 * 
 * @author 幻想
 *
 */

@SuppressWarnings("serial")
public class Information implements Serializable {

	// 通知编号 i_id
	private int i_id;
	// 用户主键编号 c_id
	private int c_id;
	// 通知内容 i_content
	private String i_content;
	// 通知时间 i_date
	private Date i_date;

	/**
	 * 有参构造方法
	 * 
	 * @param i_id
	 * @param c_id
	 * @param i_content
	 * @param i_date
	 */
	public Information(int i_id, int c_id, String i_content, Date i_date) {
		super();
		this.i_id = i_id;
		this.c_id = c_id;
		this.i_content = i_content;
		this.i_date = i_date;
	}

	/**
	 * 空参构造方法
	 */
	public Information() {
		super();
	}

	public int getI_id() {
		return i_id;
	}

	public void setI_id(int i_id) {
		this.i_id = i_id;
	}

	public int getC_id() {
		return c_id;
	}

	public void setC_id(int c_id) {
		this.c_id = c_id;
	}

	public String getI_content() {
		return i_content;
	}

	public void setI_content(String i_content) {
		this.i_content = i_content;
	}

	public Date getI_date() {
		return i_date;
	}

	public void setI_date(Date i_date) {
		this.i_date = i_date;
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
		if (obj instanceof Information) {
			Information i = (Information) obj;
			if (i.getI_id() == this.i_id) {
				return true;
			}
		}
		return false;
	}

	@Override
	public String toString() {
		return "Information [i_id=" + i_id + ", c_id=" + c_id + ", i_content=" + i_content + ", i_date=" + i_date + "]";
	}

}
