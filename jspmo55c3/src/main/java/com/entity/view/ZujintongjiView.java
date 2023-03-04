package com.entity.view;

import com.entity.ZujintongjiEntity;

import com.baomidou.mybatisplus.annotations.TableName;
import org.apache.commons.beanutils.BeanUtils;
import java.lang.reflect.InvocationTargetException;

import java.io.Serializable;
 

/**
 * 租金统计
 * 后端返回视图实体辅助类   
 * （通常后端关联的表或者自定义的字段需要返回使用）
 * @author 
 * @email 
 * @date 2022-01-18 15:06:48
 */
@TableName("zujintongji")
public class ZujintongjiView  extends ZujintongjiEntity implements Serializable {
	private static final long serialVersionUID = 1L;

	public ZujintongjiView(){
	}
 
 	public ZujintongjiView(ZujintongjiEntity zujintongjiEntity){
 	try {
			BeanUtils.copyProperties(this, zujintongjiEntity);
		} catch (IllegalAccessException | InvocationTargetException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
 		
	}
}
