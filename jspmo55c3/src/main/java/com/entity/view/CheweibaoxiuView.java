package com.entity.view;

import com.entity.CheweibaoxiuEntity;

import com.baomidou.mybatisplus.annotations.TableName;
import org.apache.commons.beanutils.BeanUtils;
import java.lang.reflect.InvocationTargetException;

import java.io.Serializable;
 

/**
 * 车位报修
 * 后端返回视图实体辅助类   
 * （通常后端关联的表或者自定义的字段需要返回使用）
 * @author 
 * @email 
 * @date 2022-01-18 15:06:48
 */
@TableName("cheweibaoxiu")
public class CheweibaoxiuView  extends CheweibaoxiuEntity implements Serializable {
	private static final long serialVersionUID = 1L;

	public CheweibaoxiuView(){
	}
 
 	public CheweibaoxiuView(CheweibaoxiuEntity cheweibaoxiuEntity){
 	try {
			BeanUtils.copyProperties(this, cheweibaoxiuEntity);
		} catch (IllegalAccessException | InvocationTargetException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
 		
	}
}
