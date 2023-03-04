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


import com.dao.ZujintongjiDao;
import com.entity.ZujintongjiEntity;
import com.service.ZujintongjiService;
import com.entity.vo.ZujintongjiVO;
import com.entity.view.ZujintongjiView;

@Service("zujintongjiService")
public class ZujintongjiServiceImpl extends ServiceImpl<ZujintongjiDao, ZujintongjiEntity> implements ZujintongjiService {


    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        Page<ZujintongjiEntity> page = this.selectPage(
                new Query<ZujintongjiEntity>(params).getPage(),
                new EntityWrapper<ZujintongjiEntity>()
        );
        return new PageUtils(page);
    }
    
    @Override
	public PageUtils queryPage(Map<String, Object> params, Wrapper<ZujintongjiEntity> wrapper) {
		  Page<ZujintongjiView> page =new Query<ZujintongjiView>(params).getPage();
	        page.setRecords(baseMapper.selectListView(page,wrapper));
	    	PageUtils pageUtil = new PageUtils(page);
	    	return pageUtil;
 	}
    
    @Override
	public List<ZujintongjiVO> selectListVO(Wrapper<ZujintongjiEntity> wrapper) {
 		return baseMapper.selectListVO(wrapper);
	}
	
	@Override
	public ZujintongjiVO selectVO(Wrapper<ZujintongjiEntity> wrapper) {
 		return baseMapper.selectVO(wrapper);
	}
	
	@Override
	public List<ZujintongjiView> selectListView(Wrapper<ZujintongjiEntity> wrapper) {
		return baseMapper.selectListView(wrapper);
	}

	@Override
	public ZujintongjiView selectView(Wrapper<ZujintongjiEntity> wrapper) {
		return baseMapper.selectView(wrapper);
	}

    @Override
    public List<Map<String, Object>> selectValue(Map<String, Object> params, Wrapper<ZujintongjiEntity> wrapper) {
        return baseMapper.selectValue(params, wrapper);
    }

    @Override
    public List<Map<String, Object>> selectTimeStatValue(Map<String, Object> params, Wrapper<ZujintongjiEntity> wrapper) {
        return baseMapper.selectTimeStatValue(params, wrapper);
    }
    
    @Override
    public List<Map<String, Object>> selectGroup(Map<String, Object> params, Wrapper<ZujintongjiEntity> wrapper) {
        return baseMapper.selectGroup(params, wrapper);
    }

}
