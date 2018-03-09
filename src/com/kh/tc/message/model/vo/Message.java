package com.kh.tc.message.model.vo;

import java.sql.Date;

public class Message {
	private String cCode;
	private String msgCode;
	private String msgContent;
	private Date sendTime;
	private String check;
	private String receveCode;
	private String starCheck;
	
	public Message() {
		super();
	}

	public Message(String cCode, String msgCode, String msgContent, Date sendTime, String check, String receveCode,
			String starCheck) {
		super();
		this.cCode = cCode;
		this.msgCode = msgCode;
		this.msgContent = msgContent;
		this.sendTime = sendTime;
		this.check = check;
		this.receveCode = receveCode;
		this.starCheck = starCheck;
	}

	public String getcCode() {
		return cCode;
	}

	public String getMsgCode() {
		return msgCode;
	}

	public String getMsgContent() {
		return msgContent;
	}

	public Date getSendTime() {
		return sendTime;
	}

	public String getCheck() {
		return check;
	}

	public String getReceveCode() {
		return receveCode;
	}

	public String getStarCheck() {
		return starCheck;
	}

	public void setcCode(String cCode) {
		this.cCode = cCode;
	}

	public void setMsgCode(String msgCode) {
		this.msgCode = msgCode;
	}

	public void setMsgContent(String msgContent) {
		this.msgContent = msgContent;
	}

	public void setSendTime(Date sendTime) {
		this.sendTime = sendTime;
	}

	public void setCheck(String check) {
		this.check = check;
	}

	public void setReceveCode(String receveCode) {
		this.receveCode = receveCode;
	}

	public void setStarCheck(String starCheck) {
		this.starCheck = starCheck;
	}

	@Override
	public String toString() {
		return "message [cCode=" + cCode + ", msgCode=" + msgCode + ", msgContent=" + msgContent + ", sendTime="
				+ sendTime + ", check=" + check + ", receveCode=" + receveCode + ", starCheck=" + starCheck + "]";
	}
	

}
