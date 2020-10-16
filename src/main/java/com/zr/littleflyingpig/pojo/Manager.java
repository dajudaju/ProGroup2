package com.zr.littleflyingpig.pojo;

import java.io.Serializable;

/**
 * Manager 实体类
 * 
 * @author 幻想
 *
 */

@SuppressWarnings("serial")
public class Manager implements Serializable {

	// 管理员id
	private int m_id;
	// 管理员名称 m_name
	private String m_name;
	// 管理员登录密码 m_password
	private String m_password;

	/**
	 * 有参构造方法
	 * 
	 * @param m_id
	 * @param m_name
	 * @param m_password
	 */
	public Manager(int m_id, String m_name, String m_password) {
		super();
		this.m_id = m_id;
		this.m_name = m_name;
		this.m_password = m_password;
	}

	/**
	 * 空构造方法
	 */
	public Manager() {
		super();
	}

	public int getM_id() {
		return m_id;
	}

	public void setM_id(int m_id) {
		this.m_id = m_id;
	}

	public String getM_name() {
		return m_name;
	}

	public void setM_name(String m_name) {
		this.m_name = m_name;
	}

	public String getM_password() {
		return m_password;
	}

	public void setM_password(String m_password) {
		this.m_password = m_password;
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
		if (obj instanceof Manager) {
			Manager m = (Manager) obj;
			if (m.getM_id() == this.getM_id()) {
				return true;
			}
		}
		return false;
	}

	@Override
	public String toString() {
		return "Manager [m_id=" + m_id + ", m_name=" + m_name + ", m_password=" + m_password + "]";
	}

}
