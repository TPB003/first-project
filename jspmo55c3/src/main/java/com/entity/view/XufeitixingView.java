package com.entity.view;

import com.entity.XufeitixingEntity;

import com.baomidou.mybatisplus.annotations.TableName;
import org.apache.commons.beanutils.BeanUtils;
import java.lang.reflect.InvocationTargetException;

import java.io.Serializable;
 

/**
 * 续费提醒
 * 后端返回视图实体辅助类   
 * （通常后端关联的表或者自定义的字段需要返回使用）
 * @author 
 * @email 
 * @date 2022-01-18 15:06:48
 */
@TableName("xufeitixing")
public class XufeitixingView  extends XufeitixingEntity implements Serializable {
	private static final long serialVersionUID = 1L;

	public XufeitixingView(){
	}
 
 	public XufeitixingView(XufeitixingEntity xufeitixingEntity){
 	try {
			BeanUtils.copyProperties(this, xufeitixingEntity);
		} catch (IllegalAccessException | InvocationTargetException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
 		
	}
}
