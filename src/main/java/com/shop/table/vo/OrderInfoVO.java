package com.shop.table.vo;

import java.util.List;

public class OrderInfoVO extends BaseVO{
	
	private String orderNo;
	private String userId;
	private String orderGoodsName;
	private String orderPrice;
	private String orderStatus;
	private String orderDt;
	private String receiveName;
	private String zipcd;
	private String addr;
	private String addrDtl;
	private String memo;
	private String regDt;
	
	private String payWay; // 결제 방식
	
	private String buyQty;  //구매수량
	private String userName;
	
	private String withdrawDtFrom;
	private String withdrawDtTo;
	
	private String receivePhone;
	
	private List<String> ordernolist;	//주문번호 리스트
	
	private List<OrderGoodsVO> goodslist;  //주문상품 리스트
	
	private String goodsCd;
	private String goodsName;
	private String unitPrice;
	//private String buyQty;
	private String ctCd;
	
	
	
	
	
	
	
	public String getPayWay() {
		return payWay;
	}
	public void setPayWay(String payWay) {
		this.payWay = payWay;
	}
	public List<OrderGoodsVO> getGoodslist() {
		return goodslist;
	}
	public void setGoodslist(List<OrderGoodsVO> goodslist) {
		this.goodslist = goodslist;
	}
	public String getGoodsCd() {
		return goodsCd;
	}
	public void setGoodsCd(String goodsCd) {
		this.goodsCd = goodsCd;
	}
	public String getGoodsName() {
		return goodsName;
	}
	public void setGoodsName(String goodsName) {
		this.goodsName = goodsName;
	}
	public String getUnitPrice() {
		return unitPrice;
	}
	public void setUnitPrice(String unitPrice) {
		this.unitPrice = unitPrice;
	}
	public String getCtCd() {
		return ctCd;
	}
	public void setCtCd(String ctCd) {
		this.ctCd = ctCd;
	}
	public String getReceivePhone() {
		return receivePhone;
	}
	public void setReceivePhone(String receivePhone) {
		this.receivePhone = receivePhone;
	}
	public List<String> getOrdernolist() {
		return ordernolist;
	}
	public void setOrdernolist(List<String> ordernolist) {
		this.ordernolist = ordernolist;
	}
	public String getWithdrawDtFrom() {
		return withdrawDtFrom;
	}
	public void setWithdrawDtFrom(String withdrawDtFrom) {
		this.withdrawDtFrom = withdrawDtFrom;
	}
	public String getWithdrawDtTo() {
		return withdrawDtTo;
	}
	public void setWithdrawDtTo(String withdrawDtTo) {
		this.withdrawDtTo = withdrawDtTo;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getBuyQty() {
		return buyQty;
	}
	public void setBuyQty(String buyQty) {
		this.buyQty = buyQty;
	}
	public String getOrderNo() {
		return orderNo;
	}
	public void setOrderNo(String orderNo) {
		this.orderNo = orderNo;
	}
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public String getOrderGoodsName() {
		return orderGoodsName;
	}
	public void setOrderGoodsName(String orderGoodsName) {
		this.orderGoodsName = orderGoodsName;
	}
	public String getOrderPrice() {
		return orderPrice;
	}
	public void setOrderPrice(String orderPrice) {
		this.orderPrice = orderPrice;
	}
	public String getOrderStatus() {
		return orderStatus;
	}
	public void setOrderStatus(String orderStatus) {
		this.orderStatus = orderStatus;
	}
	public String getOrderDt() {
		return orderDt;
	}
	public void setOrderDt(String orderDt) {
		this.orderDt = orderDt;
	}
	public String getReceiveName() {
		return receiveName;
	}
	public void setReceiveName(String receiveName) {
		this.receiveName = receiveName;
	}
	public String getZipcd() {
		return zipcd;
	}
	public void setZipcd(String zipcd) {
		this.zipcd = zipcd;
	}
	public String getAddr() {
		return addr;
	}
	public void setAddr(String addr) {
		this.addr = addr;
	}
	public String getAddrDtl() {
		return addrDtl;
	}
	public void setAddrDtl(String addrDtl) {
		this.addrDtl = addrDtl;
	}
	public String getMemo() {
		return memo;
	}
	public void setMemo(String memo) {
		this.memo = memo;
	}
	public String getRegDt() {
		return regDt;
	}
	public void setRegDt(String regDt) {
		this.regDt = regDt;
	}
	
	
	
	
	
}
