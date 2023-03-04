package com.dao;

import com.entity.ZujintongjiEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import java.util.List;
import java.util.Map;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;

import org.apache.ibatis.annotations.Param;
import com.entity.vo.ZujintongjiVO;
import com.entity.view.ZujintongjiView;


/**
 * 租金统计
 * 
 * @author 
 * @email 
 * @date 2022-01-18 15:06:48
 */
public interface ZujintongjiDao extends BaseMapper<ZujintongjiEntity> {
	
	List<ZujintongjiVO> selectListVO(@Param("ew") Wrapper<ZujintongjiEntity> wrapper);
	
	ZujintongjiVO selectVO(@Param("ew") Wrapper<ZujintongjiEntity> wrapper);
	
	List<ZujintongjiView> selectListView(@Param("ew") Wrapper<ZujintongjiEntity> wrapper);

	List<ZujintongjiView> selectListView(Pagination page,@Param("ew") Wrapper<ZujintongjiEntity> wrapper);
	
	ZujintongjiView selectView(@Param("ew") Wrapper<ZujintongjiEntity> wrapper);
	

    List<Map<String, Object>> selectValue(@Param("params") Map<String, Object> params,@Param("ew") Wrapper<ZujintongjiEntity> wrapper);

    List<Map<String, Object>> selectTimeStatValue(@Param("params") Map<String, Object> params,@Param("ew") Wrapper<ZujintongjiEntity> wrapper);
    
    List<Map<String, Object>> selectGroup(@Param("params") Map<String, Object> params,@Param("ew") Wrapper<ZujintongjiEntity> wrapper);
}
