package com.kh.tc.product.model.vo;

import java.sql.Date;

public class Pay {
	
	private int pay_code;
	private String ac_code;
	private int c_code;
	
	private int pay_price;
	private String howtopay;
	private int from_code;

	private Date pay_time;
	private int p_code;
	private String p_name;
	
	public Pay(int pay_code, String ac_code, int c_code, int pay_price, String howtopay, int from_code, Date pay_time,
			int p_code, String p_name) {
		super();
		this.pay_code = pay_code;
		this.ac_code = ac_code;
		this.c_code = c_code;
		this.pay_price = pay_price;
		this.howtopay = howtopay;
		this.from_code = from_code;
		this.pay_time = pay_time;
		this.p_code = p_code;
		this.p_name = p_name;
	}

	public Pay() {
	}

	public int getPay_code() {
		return pay_code;
	}
	public void setPay_code(int pay_code) {
		this.pay_code = pay_code;
	}
	public String getAc_code() {
		return ac_code;
	}
	public void setAc_code(String ac_code) {
		this.ac_code = ac_code;
	}
	public int getC_code() {
		return c_code;
	}
	public void setC_code(int c_code) {
		this.c_code = c_code;
	}
	public int getPay_price() {
		return pay_price;
	}
	public void setPay_price(int pay_price) {
		this.pay_price = pay_price;
	}
	public String getHowtopay() {
		return howtopay;
	}
	public void setHowtopay(String howtopay) {
		this.howtopay = howtopay;
	}
	public int getFrom_code() {
		return from_code;
	}
	public void setFrom_code(int from_code) {
		this.from_code = from_code;
	}
	public Date getPay_time() {
		return pay_time;
	}
	public void setPay_time(Date pay_time) {
		this.pay_time = pay_time;
	}
	public int getP_code() {
		return p_code;
	}
	public void setP_code(int p_code) {
		this.p_code = p_code;
	}
	public String getP_name() {
		return p_name;
	}
	public void setP_name(String p_name) {
		this.p_name = p_name;
	}
	
	
}
