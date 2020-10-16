package com.zr.xiaofeizhu.pojo;

import java.io.Serializable;

/**
 * Customer 实体类
 * @author 幻想
 *
 */
@SuppressWarnings("serial")
public class Customer implements Serializable{
		//用户id c_id
		private int c_id;
		//用户名称 c_name
		private String c_name;
		//用户密码	 c_private
		private String c_password;
		//用户性别 c_gender
		private byte c_gender;
		//用户电话 c_tel
		private String c_tel;
		//用户使用状态 c_state 0：禁用 1：激活
		private byte c_state;
		
		/**
		 * 有参构造
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
		
		//无参构造方法
		public Customer() {
			super();
			// TODO Auto-generated constructor stub
		}
		
		//
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
			final int prime = 31;
			int result = 1;
			result = prime * result + c_gender;
			result = prime * result + c_id;
			result = prime * result + ((c_name == null) ? 0 : c_name.hashCode());
			result = prime * result + ((c_password == null) ? 0 : c_password.hashCode());
			result = prime * result + c_state;
			result = prime * result + ((c_tel == null) ? 0 : c_tel.hashCode());
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
			Customer other = (Customer) obj;
			if (c_gender != other.c_gender)
				return false;
			if (c_id != other.c_id)
				return false;
			if (c_name == null) {
				if (other.c_name != null)
					return false;
			} else if (!c_name.equals(other.c_name))
				return false;
			if (c_password == null) {
				if (other.c_password != null)
					return false;
			} else if (!c_password.equals(other.c_password))
				return false;
			if (c_state != other.c_state)
				return false;
			if (c_tel == null) {
				if (other.c_tel != null)
					return false;
			} else if (!c_tel.equals(other.c_tel))
				return false;
			return true;
		}

		@Override
		public String toString() {
			return "Customer [c_id=" + c_id + ", c_name=" + c_name + ", c_password=" + c_password + ", c_gender="
					+ c_gender + ", c_tel=" + c_tel + ", c_state=" + c_state + "]";
		}
		
		
		
		
		
		
		
}
