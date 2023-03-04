package com.dao;

import com.entity.XufeitixingEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import java.util.List;
import java.util.Map;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;

import org.apache.ibatis.annotations.Param;
import com.entity.vo.XufeitixingVO;
import com.entity.view.XufeitixingView;


/**
 * 续费提醒
 * 
 * @author 
 * @email 
 * @date 2022-01-18 15:06:48
 */
public interface XufeitixingDao extends BaseMapper<XufeitixingEntity> {
	
	List<XufeitixingVO> selectListVO(@Param("ew") Wrapper<XufeitixingEntity> wrapper);
	
	XufeitixingVO selectVO(@Param("ew") Wrapper<XufeitixingEntity> wrapper);
	
	List<XufeitixingView> selectListView(@Param("ew") Wrapper<XufeitixingEntity> wrapper);

	List<XufeitixingView> selectListView(Pagination page,@Param("ew") Wrapper<XufeitixingEntity> wrapper);
	
	XufeitixingView selectView(@Param("ew") Wrapper<XufeitixingEntity> wrapper);
	

}
