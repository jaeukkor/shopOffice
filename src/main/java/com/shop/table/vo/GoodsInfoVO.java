package com.shop.table.vo;

import java.util.List;

public class GoodsInfoVO extends BaseVO{
	private String ctCd;
	private String ctName;
	private String ctLevel;
	private String upCtCd;
	private String regDt;
	
	private String goodsCd;
	private String goodsName;
	private String normalPrice;
	private String sellPrice;
	private String ivQty;
	private String goodsStatus;
	private String supplierCd;
	private String thumnailUrl;
	private String content;
	
	private String supplierName;
	
	private String dae;
	private String jong;
	private String so;
	
	private String ddae;
	private String jjong;
	private String sso;
	
	private String textt;
	private String unitPrice;
	private String buyQty;
	
	
	public String getUnitPrice() {
		return unitPrice;
	}

	public void setUnitPrice(String unitPrice) {
		this.unitPrice = unitPrice;
	}

	public String getBuyQty() {
		return buyQty;
	}

	public void setBuyQty(String buyQty) {
		this.buyQty = buyQty;
	}

	List<GoodsInfoVO> sclist;		//소분류카테고리 리스트
	List<GoodsInfoVO> mclist;		//중분류카테고리 리스트
	
	public String getSupplierName() {
		return supplierName;
	}

	public void setSupplierName(String supplierName) {
		this.supplierName = supplierName;
	}

	private List<SupplierInfoVO> supplierlist;	//거래처 리스트
	
	private List<GoodsInfoVO>  mCategorylist;	//대분류

	
	
	public String getDae() {
		return dae;
	}

	public void setDae(String dae) {
		this.dae = dae;
	}

	public String getJong() {
		return jong;
	}

	public void setJong(String jong) {
		this.jong = jong;
	}

	public String getSo() {
		return so;
	}

	public void setSo(String so) {
		this.so = so;
	}

	public List<SupplierInfoVO> getSupplierlist() {
		return supplierlist;
	}

	public void setSupplierlist(List<SupplierInfoVO> supplierlist) {
		this.supplierlist = supplierlist;
	}

	public List<GoodsInfoVO> getmCategorylist() {
		return mCategorylist;
	}

	public void setmCategorylist(List<GoodsInfoVO> mCategorylist) {
		this.mCategorylist = mCategorylist;
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

	public String getNormalPrice() {
		return normalPrice;
	}

	public void setNormalPrice(String normalPrice) {
		this.normalPrice = normalPrice;
	}

	public String getSellPrice() {
		return sellPrice;
	}

	public void setSellPrice(String sellPrice) {
		this.sellPrice = sellPrice;
	}

	public String getIvQty() {
		return ivQty;
	}

	public void setIvQty(String ivQty) {
		this.ivQty = ivQty;
	}

	public String getGoodsStatus() {
		return goodsStatus;
	}

	public void setGoodsStatus(String goodsStatus) {
		this.goodsStatus = goodsStatus;
	}

	public String getSupplierCd() {
		return supplierCd;
	}

	public void setSupplierCd(String supplierCd) {
		this.supplierCd = supplierCd;
	}

	public String getThumnailUrl() {
		return thumnailUrl;
	}

	public void setThumnailUrl(String thumnailUrl) {
		this.thumnailUrl = thumnailUrl;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	private List<GoodsInfoVO> goodslist;

	public String getCtCd() {
		return ctCd;
	}

	public void setCtCd(String ctCd) {
		this.ctCd = ctCd;
	}

	public String getCtName() {
		return ctName;
	}

	public void setCtName(String ctName) {
		this.ctName = ctName;
	}

	public String getCtLevel() {
		return ctLevel;
	}

	public void setCtLevel(String ctLevel) {
		this.ctLevel = ctLevel;
	}

	public String getUpCtCd() {
		return upCtCd;
	}

	public void setUpCtCd(String upCtCd) {
		this.upCtCd = upCtCd;
	}

	public String getRegDt() {
		return regDt;
	}

	public void setRegDt(String regDt) {
		this.regDt = regDt;
	}

	public List<GoodsInfoVO> getGoodslist() {
		return goodslist;
	}

	public void setGoodslist(List<GoodsInfoVO> goodslist) {
		this.goodslist = goodslist;
	}

	public List<GoodsInfoVO> getSclist() {
		return sclist;
	}

	public void setSclist(List<GoodsInfoVO> sclist) {
		this.sclist = sclist;
	}

	public List<GoodsInfoVO> getMclist() {
		return mclist;
	}

	public void setMclist(List<GoodsInfoVO> mclist) {
		this.mclist = mclist;
	}

	public String getDdae() {
		return ddae;
	}

	public void setDdae(String ddae) {
		this.ddae = ddae;
	}

	public String getJjong() {
		return jjong;
	}

	public void setJjong(String jjong) {
		this.jjong = jjong;
	}

	public String getSso() {
		return sso;
	}

	public void setSso(String sso) {
		this.sso = sso;
	}

	public String getTextt() {
		return textt;
	}

	public void setTextt(String textt) {
		this.textt = textt;
	}

	
	
	
}