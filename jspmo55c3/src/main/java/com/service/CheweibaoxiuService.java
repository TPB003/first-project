package com.service;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.service.IService;
import com.utils.PageUtils;
import com.entity.CheweibaoxiuEntity;
import java.util.List;
import java.util.Map;
import com.entity.vo.CheweibaoxiuVO;
import org.apache.ibatis.annotations.Param;
import com.entity.view.CheweibaoxiuView;


/**
 * 车位报修
 *
 * @author 
 * @email 
 * @date 2022-01-18 15:06:48
 */
public interface CheweibaoxiuService extends IService<CheweibaoxiuEntity> {

    PageUtils queryPage(Map<String, Object> params);
    
   	List<CheweibaoxiuVO> selectListVO(Wrapper<CheweibaoxiuEntity> wrapper);
   	
   	CheweibaoxiuVO selectVO(@Param("ew") Wrapper<CheweibaoxiuEntity> wrapper);
   	
   	List<CheweibaoxiuView> selectListView(Wrapper<CheweibaoxiuEntity> wrapper);
   	
   	CheweibaoxiuView selectView(@Param("ew") Wrapper<CheweibaoxiuEntity> wrapper);
   	
   	PageUtils queryPage(Map<String, Object> params,Wrapper<CheweibaoxiuEntity> wrapper);
   	

    List<Map<String, Object>> selectValue(Map<String, Object> params,Wrapper<CheweibaoxiuEntity> wrapper);

    List<Map<String, Object>> selectTimeStatValue(Map<String, Object> params,Wrapper<CheweibaoxiuEntity> wrapper);
    
    List<Map<String, Object>> selectGroup(Map<String, Object> params,Wrapper<CheweibaoxiuEntity> wrapper);
}

