package com.entity.view;

import com.entity.CheweizulinEntity;

import com.baomidou.mybatisplus.annotations.TableName;
import org.apache.commons.beanutils.BeanUtils;
import java.lang.reflect.InvocationTargetException;

import java.io.Serializable;
 

/**
 * 车位租赁
 * 后端返回视图实体辅助类   
 * （通常后端关联的表或者自定义的字段需要返回使用）
 * @author 
 * @email 
 * @date 2022-01-18 15:06:48
 */
@TableName("cheweizulin")
public class CheweizulinView  extends CheweizulinEntity implements Serializable {
	private static final long serialVersionUID = 1L;

	public CheweizulinView(){
	}
 
 	public CheweizulinView(CheweizulinEntity cheweizulinEntity){
 	try {
			BeanUtils.copyProperties(this, cheweizulinEntity);
		} catch (IllegalAccessException | InvocationTargetException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
 		
	}
}
