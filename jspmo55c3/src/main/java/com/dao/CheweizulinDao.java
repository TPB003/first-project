package com.dao;

import com.entity.CheweizulinEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import java.util.List;
import java.util.Map;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;

import org.apache.ibatis.annotations.Param;
import com.entity.vo.CheweizulinVO;
import com.entity.view.CheweizulinView;


/**
 * 车位租赁
 * 
 * @author 
 * @email 
 * @date 2022-01-18 15:06:48
 */
public interface CheweizulinDao extends BaseMapper<CheweizulinEntity> {
	
	List<CheweizulinVO> selectListVO(@Param("ew") Wrapper<CheweizulinEntity> wrapper);
	
	CheweizulinVO selectVO(@Param("ew") Wrapper<CheweizulinEntity> wrapper);
	
	List<CheweizulinView> selectListView(@Param("ew") Wrapper<CheweizulinEntity> wrapper);

	List<CheweizulinView> selectListView(Pagination page,@Param("ew") Wrapper<CheweizulinEntity> wrapper);
	
	CheweizulinView selectView(@Param("ew") Wrapper<CheweizulinEntity> wrapper);
	

    List<Map<String, Object>> selectValue(@Param("params") Map<String, Object> params,@Param("ew") Wrapper<CheweizulinEntity> wrapper);

    List<Map<String, Object>> selectTimeStatValue(@Param("params") Map<String, Object> params,@Param("ew") Wrapper<CheweizulinEntity> wrapper);
    
    List<Map<String, Object>> selectGroup(@Param("params") Map<String, Object> params,@Param("ew") Wrapper<CheweizulinEntity> wrapper);
}
