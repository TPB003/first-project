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


import com.dao.CheweizulinDao;
import com.entity.CheweizulinEntity;
import com.service.CheweizulinService;
import com.entity.vo.CheweizulinVO;
import com.entity.view.CheweizulinView;

@Service("cheweizulinService")
public class CheweizulinServiceImpl extends ServiceImpl<CheweizulinDao, CheweizulinEntity> implements CheweizulinService {


    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        Page<CheweizulinEntity> page = this.selectPage(
                new Query<CheweizulinEntity>(params).getPage(),
                new EntityWrapper<CheweizulinEntity>()
        );
        return new PageUtils(page);
    }
    
    @Override
	public PageUtils queryPage(Map<String, Object> params, Wrapper<CheweizulinEntity> wrapper) {
		  Page<CheweizulinView> page =new Query<CheweizulinView>(params).getPage();
	        page.setRecords(baseMapper.selectListView(page,wrapper));
	    	PageUtils pageUtil = new PageUtils(page);
	    	return pageUtil;
 	}
    
    @Override
	public List<CheweizulinVO> selectListVO(Wrapper<CheweizulinEntity> wrapper) {
 		return baseMapper.selectListVO(wrapper);
	}
	
	@Override
	public CheweizulinVO selectVO(Wrapper<CheweizulinEntity> wrapper) {
 		return baseMapper.selectVO(wrapper);
	}
	
	@Override
	public List<CheweizulinView> selectListView(Wrapper<CheweizulinEntity> wrapper) {
		return baseMapper.selectListView(wrapper);
	}

	@Override
	public CheweizulinView selectView(Wrapper<CheweizulinEntity> wrapper) {
		return baseMapper.selectView(wrapper);
	}

    @Override
    public List<Map<String, Object>> selectValue(Map<String, Object> params, Wrapper<CheweizulinEntity> wrapper) {
        return baseMapper.selectValue(params, wrapper);
    }

    @Override
    public List<Map<String, Object>> selectTimeStatValue(Map<String, Object> params, Wrapper<CheweizulinEntity> wrapper) {
        return baseMapper.selectTimeStatValue(params, wrapper);
    }
    
    @Override
    public List<Map<String, Object>> selectGroup(Map<String, Object> params, Wrapper<CheweizulinEntity> wrapper) {
        return baseMapper.selectGroup(params, wrapper);
    }

}
