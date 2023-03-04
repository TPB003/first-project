package com.service;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.service.IService;
import com.utils.PageUtils;
import com.entity.XufeitixingEntity;
import java.util.List;
import java.util.Map;
import com.entity.vo.XufeitixingVO;
import org.apache.ibatis.annotations.Param;
import com.entity.view.XufeitixingView;


/**
 * 续费提醒
 *
 * @author 
 * @email 
 * @date 2022-01-18 15:06:48
 */
public interface XufeitixingService extends IService<XufeitixingEntity> {

    PageUtils queryPage(Map<String, Object> params);
    
   	List<XufeitixingVO> selectListVO(Wrapper<XufeitixingEntity> wrapper);
   	
   	XufeitixingVO selectVO(@Param("ew") Wrapper<XufeitixingEntity> wrapper);
   	
   	List<XufeitixingView> selectListView(Wrapper<XufeitixingEntity> wrapper);
   	
   	XufeitixingView selectView(@Param("ew") Wrapper<XufeitixingEntity> wrapper);
   	
   	PageUtils queryPage(Map<String, Object> params,Wrapper<XufeitixingEntity> wrapper);
   	

}

