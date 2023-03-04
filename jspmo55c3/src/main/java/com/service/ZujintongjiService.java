package com.service;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.service.IService;
import com.utils.PageUtils;
import com.entity.ZujintongjiEntity;
import java.util.List;
import java.util.Map;
import com.entity.vo.ZujintongjiVO;
import org.apache.ibatis.annotations.Param;
import com.entity.view.ZujintongjiView;


/**
 * 租金统计
 *
 * @author 
 * @email 
 * @date 2022-01-18 15:06:48
 */
public interface ZujintongjiService extends IService<ZujintongjiEntity> {

    PageUtils queryPage(Map<String, Object> params);
    
   	List<ZujintongjiVO> selectListVO(Wrapper<ZujintongjiEntity> wrapper);
   	
   	ZujintongjiVO selectVO(@Param("ew") Wrapper<ZujintongjiEntity> wrapper);
   	
   	List<ZujintongjiView> selectListView(Wrapper<ZujintongjiEntity> wrapper);
   	
   	ZujintongjiView selectView(@Param("ew") Wrapper<ZujintongjiEntity> wrapper);
   	
   	PageUtils queryPage(Map<String, Object> params,Wrapper<ZujintongjiEntity> wrapper);
   	

    List<Map<String, Object>> selectValue(Map<String, Object> params,Wrapper<ZujintongjiEntity> wrapper);

    List<Map<String, Object>> selectTimeStatValue(Map<String, Object> params,Wrapper<ZujintongjiEntity> wrapper);
    
    List<Map<String, Object>> selectGroup(Map<String, Object> params,Wrapper<ZujintongjiEntity> wrapper);
}

