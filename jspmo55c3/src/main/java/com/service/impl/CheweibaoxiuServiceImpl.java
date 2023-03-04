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


import com.dao.CheweibaoxiuDao;
import com.entity.CheweibaoxiuEntity;
import com.service.CheweibaoxiuService;
import com.entity.vo.CheweibaoxiuVO;
import com.entity.view.CheweibaoxiuView;

@Service("cheweibaoxiuService")
public class CheweibaoxiuServiceImpl extends ServiceImpl<CheweibaoxiuDao, CheweibaoxiuEntity> implements CheweibaoxiuService {


    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        Page<CheweibaoxiuEntity> page = this.selectPage(
                new Query<CheweibaoxiuEntity>(params).getPage(),
                new EntityWrapper<CheweibaoxiuEntity>()
        );
        return new PageUtils(page);
    }
    
    @Override
	public PageUtils queryPage(Map<String, Object> params, Wrapper<CheweibaoxiuEntity> wrapper) {
		  Page<CheweibaoxiuView> page =new Query<CheweibaoxiuView>(params).getPage();
	        page.setRecords(baseMapper.selectListView(page,wrapper));
	    	PageUtils pageUtil = new PageUtils(page);
	    	return pageUtil;
 	}
    
    @Override
	public List<CheweibaoxiuVO> selectListVO(Wrapper<CheweibaoxiuEntity> wrapper) {
 		return baseMapper.selectListVO(wrapper);
	}
	
	@Override
	public CheweibaoxiuVO selectVO(Wrapper<CheweibaoxiuEntity> wrapper) {
 		return baseMapper.selectVO(wrapper);
	}
	
	@Override
	public List<CheweibaoxiuView> selectListView(Wrapper<CheweibaoxiuEntity> wrapper) {
		return baseMapper.selectListView(wrapper);
	}

	@Override
	public CheweibaoxiuView selectView(Wrapper<CheweibaoxiuEntity> wrapper) {
		return baseMapper.selectView(wrapper);
	}

    @Override
    public List<Map<String, Object>> selectValue(Map<String, Object> params, Wrapper<CheweibaoxiuEntity> wrapper) {
        return baseMapper.selectValue(params, wrapper);
    }

    @Override
    public List<Map<String, Object>> selectTimeStatValue(Map<String, Object> params, Wrapper<CheweibaoxiuEntity> wrapper) {
        return baseMapper.selectTimeStatValue(params, wrapper);
    }
    
    @Override
    public List<Map<String, Object>> selectGroup(Map<String, Object> params, Wrapper<CheweibaoxiuEntity> wrapper) {
        return baseMapper.selectGroup(params, wrapper);
    }

}
