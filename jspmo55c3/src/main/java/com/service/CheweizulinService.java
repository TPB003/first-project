package com.service;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.service.IService;
import com.utils.PageUtils;
import com.entity.CheweizulinEntity;
import java.util.List;
import java.util.Map;
import com.entity.vo.CheweizulinVO;
import org.apache.ibatis.annotations.Param;
import com.entity.view.CheweizulinView;


/**
 * 车位租赁
 *
 * @author 
 * @email 
 * @date 2022-01-18 15:06:48
 */
public interface CheweizulinService extends IService<CheweizulinEntity> {

    PageUtils queryPage(Map<String, Object> params);
    
   	List<CheweizulinVO> selectListVO(Wrapper<CheweizulinEntity> wrapper);
   	
   	CheweizulinVO selectVO(@Param("ew") Wrapper<CheweizulinEntity> wrapper);
   	
   	List<CheweizulinView> selectListView(Wrapper<CheweizulinEntity> wrapper);
   	
   	CheweizulinView selectView(@Param("ew") Wrapper<CheweizulinEntity> wrapper);
   	
   	PageUtils queryPage(Map<String, Object> params,Wrapper<CheweizulinEntity> wrapper);
   	

    List<Map<String, Object>> selectValue(Map<String, Object> params,Wrapper<CheweizulinEntity> wrapper);

    List<Map<String, Object>> selectTimeStatValue(Map<String, Object> params,Wrapper<CheweizulinEntity> wrapper);
    
    List<Map<String, Object>> selectGroup(Map<String, Object> params,Wrapper<CheweizulinEntity> wrapper);
}

