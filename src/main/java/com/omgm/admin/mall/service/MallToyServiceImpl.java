package com.omgm.admin.mall.service;

import com.omgm.admin.mall.beans.MallToyVO;
import com.omgm.admin.mall.controller.MallToyDAO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service("mallToyService")
public class MallToyServiceImpl implements MallToyService{

    @Autowired
    private MallToyDAO mallToyDAO;

    @Override
    public void insertBoard(MallToyVO vo) {
        mallToyDAO.insertMallToy(vo);
    }
}
