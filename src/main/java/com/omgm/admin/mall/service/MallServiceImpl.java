package com.omgm.admin.mall.service;

import com.omgm.admin.mall.beans.MallFeedVO;
import com.omgm.admin.mall.beans.MallToyVO;
import com.omgm.admin.mall.beans.MallDAO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service("mallService")
public class MallServiceImpl implements MallService {

    @Autowired
    MallDAO mallDAO;

    @Override
    public void insertMallToy(MallToyVO vo) {
        mallDAO.insertMallToy(vo);
    }

    @Override
    public void updateMallToy(MallToyVO vo) throws Exception {
        mallDAO.updateMallToy(vo);
    }

    @Override
    public List<MallToyVO> getMallToyList() throws Exception{
        return mallDAO.getMallToyList();
    }

    @Override
    public MallToyVO getMallToyOne(MallToyVO vo) throws Exception {
        return mallDAO.getMallToyOne(vo);
    }

    @Override
    public void insertMallFeed(MallFeedVO vo) throws Exception {
        mallDAO.insertMallFeed(vo);
    }

    @Override
    public List<MallFeedVO> getMallFeedList() throws Exception {
        return mallDAO.getMallFeedList();
    }


}
