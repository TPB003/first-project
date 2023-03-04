package com.service.impl;

import org.springframework.stereotype.Service;
import java.util.Map;
import java.util.List;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.mapper.EntityWrapper;
import com.baomidou.mybatisplus.plugins.Page;
import com.baomidou.mybatisplus.service.impl.ServiceImpl;
import com.utils.PageUtils;
import com.utils.Query;


import com.dao.XufeitixingDao;
import com.entity.XufeitixingEntity;
import com.service.XufeitixingService;
import com.entity.vo.XufeitixingVO;
import com.entity.view.XufeitixingView;

@Service("xufeitixingService")
public class XufeitixingServiceImpl extends ServiceImpl<XufeitixingDao, XufeitixingEntity> implements XufeitixingService {


    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        Page<XufeitixingEntity> page = this.selectPage(
                new Query<XufeitixingEntity>(params).getPage(),
                new EntityWrapper<XufeitixingEntity>()
        );
        return new PageUtils(page);
    }
    
    @Override
	public PageUtils queryPage(Map<String, Object> params, Wrapper<XufeitixingEntity> wrapper) {
		  Page<XufeitixingView> page =new Query<XufeitixingView>(params).getPage();
	        page.setRecords(baseMapper.selectListView(page,wrapper));
	    	PageUtils pageUtil = new PageUtils(page);
	    	return pageUtil;
 	}
    
    @Override
	public List<XufeitixingVO> selectListVO(Wrapper<XufeitixingEntity> wrapper) {
 		return baseMapper.selectListVO(wrapper);
	}
	
	@Override
	public XufeitixingVO selectVO(Wrapper<XufeitixingEntity> wrapper) {
 		return baseMapper.selectVO(wrapper);
	}
	
	@Override
	public List<XufeitixingView> selectListView(Wrapper<XufeitixingEntity> wrapper) {
		return baseMapper.selectListView(wrapper);
	}

	@Override
	public XufeitixingView selectView(Wrapper<XufeitixingEntity> wrapper) {
		return baseMapper.selectView(wrapper);
	}


}
