package com.entity.vo;

import com.entity.CheweituizuEntity;

import com.baomidou.mybatisplus.annotations.TableName;
import com.fasterxml.jackson.annotation.JsonFormat;
import java.util.Date;
import org.springframework.format.annotation.DateTimeFormat;

import java.io.Serializable;
 

/**
 * 车位退租
 * 手机端接口返回实体辅助类 
 * （主要作用去除一些不必要的字段）
 * @author 
 * @email 
 * @date 2022-01-18 15:06:48
 */
public class CheweituizuVO  implements Serializable {
	private static final long serialVersionUID = 1L;

	 			
	/**
	 * 车位名称
	 */
	
	private String cheweimingcheng;
		
	/**
	 * 车位类型
	 */
	
	private String cheweileixing;
		
	/**
	 * 位置
	 */
	
	private String weizhi;
		
	/**
	 * 租赁类型
	 */
	
	private String zulinleixing;
		
	/**
	 * 退租时间
	 */
		
	@JsonFormat(locale="zh", timezone="GMT+8", pattern="yyyy-MM-dd HH:mm:ss")
	@DateTimeFormat 
	private Date tuizushijian;
		
	/**
	 * 退租备注
	 */
	
	private String tuizubeizhu;
		
	/**
	 * 账号
	 */
	
	private String zhanghao;
		
	/**
	 * 姓名
	 */
	
	private String xingming;
		
	/**
	 * 楼栋单元
	 */
	
	private String loudongdanyuan;
		
	/**
	 * 是否审核
	 */
	
	private String sfsh;
		
	/**
	 * 审核回复
	 */
	
	private String shhf;
				
	
	/**
	 * 设置：车位名称
	 */
	 
	public void setCheweimingcheng(String cheweimingcheng) {
		this.cheweimingcheng = cheweimingcheng;
	}
	
	/**
	 * 获取：车位名称
	 */
	public String getCheweimingcheng() {
		return cheweimingcheng;
	}
				
	
	/**
	 * 设置：车位类型
	 */
	 
	public void setCheweileixing(String cheweileixing) {
		this.cheweileixing = cheweileixing;
	}
	
	/**
	 * 获取：车位类型
	 */
	public String getCheweileixing() {
		return cheweileixing;
	}
				
	
	/**
	 * 设置：位置
	 */
	 
	public void setWeizhi(String weizhi) {
		this.weizhi = weizhi;
	}
	
	/**
	 * 获取：位置
	 */
	public String getWeizhi() {
		return weizhi;
	}
				
	
	/**
	 * 设置：租赁类型
	 */
	 
	public void setZulinleixing(String zulinleixing) {
		this.zulinleixing = zulinleixing;
	}
	
	/**
	 * 获取：租赁类型
	 */
	public String getZulinleixing() {
		return zulinleixing;
	}
				
	
	/**
	 * 设置：退租时间
	 */
	 
	public void setTuizushijian(Date tuizushijian) {
		this.tuizushijian = tuizushijian;
	}
	
	/**
	 * 获取：退租时间
	 */
	public Date getTuizushijian() {
		return tuizushijian;
	}
				
	
	/**
	 * 设置：退租备注
	 */
	 
	public void setTuizubeizhu(String tuizubeizhu) {
		this.tuizubeizhu = tuizubeizhu;
	}
	
	/**
	 * 获取：退租备注
	 */
	public String getTuizubeizhu() {
		return tuizubeizhu;
	}
				
	
	/**
	 * 设置：账号
	 */
	 
	public void setZhanghao(String zhanghao) {
		this.zhanghao = zhanghao;
	}
	
	/**
	 * 获取：账号
	 */
	public String getZhanghao() {
		return zhanghao;
	}
				
	
	/**
	 * 设置：姓名
	 */
	 
	public void setXingming(String xingming) {
		this.xingming = xingming;
	}
	
	/**
	 * 获取：姓名
	 */
	public String getXingming() {
		return xingming;
	}
				
	
	/**
	 * 设置：楼栋单元
	 */
	 
	public void setLoudongdanyuan(String loudongdanyuan) {
		this.loudongdanyuan = loudongdanyuan;
	}
	
	/**
	 * 获取：楼栋单元
	 */
	public String getLoudongdanyuan() {
		return loudongdanyuan;
	}
				
	
	/**
	 * 设置：是否审核
	 */
	 
	public void setSfsh(String sfsh) {
		this.sfsh = sfsh;
	}
	
	/**
	 * 获取：是否审核
	 */
	public String getSfsh() {
		return sfsh;
	}
				
	
	/**
	 * 设置：审核回复
	 */
	 
	public void setShhf(String shhf) {
		this.shhf = shhf;
	}
	
	/**
	 * 获取：审核回复
	 */
	public String getShhf() {
		return shhf;
	}
			
}
