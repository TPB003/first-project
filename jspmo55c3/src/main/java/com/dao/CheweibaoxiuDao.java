package com.dao;

import com.entity.CheweibaoxiuEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import java.util.List;
import java.util.Map;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;

import org.apache.ibatis.annotations.Param;
import com.entity.vo.CheweibaoxiuVO;
import com.entity.view.CheweibaoxiuView;


/**
 * 车位报修
 * 
 * @author 
 * @email 
 * @date 2022-01-18 15:06:48
 */
public interface CheweibaoxiuDao extends BaseMapper<CheweibaoxiuEntity> {
	
	List<CheweibaoxiuVO> selectListVO(@Param("ew") Wrapper<CheweibaoxiuEntity> wrapper);
	
	CheweibaoxiuVO selectVO(@Param("ew") Wrapper<CheweibaoxiuEntity> wrapper);
	
	List<CheweibaoxiuView> selectListView(@Param("ew") Wrapper<CheweibaoxiuEntity> wrapper);

	List<CheweibaoxiuView> selectListView(Pagination page,@Param("ew") Wrapper<CheweibaoxiuEntity> wrapper);
	
	CheweibaoxiuView selectView(@Param("ew") Wrapper<CheweibaoxiuEntity> wrapper);
	

    List<Map<String, Object>> selectValue(@Param("params") Map<String, Object> params,@Param("ew") Wrapper<CheweibaoxiuEntity> wrapper);

    List<Map<String, Object>> selectTimeStatValue(@Param("params") Map<String, Object> params,@Param("ew") Wrapper<CheweibaoxiuEntity> wrapper);
    
    List<Map<String, Object>> selectGroup(@Param("params") Map<String, Object> params,@Param("ew") Wrapper<CheweibaoxiuEntity> wrapper);
}
