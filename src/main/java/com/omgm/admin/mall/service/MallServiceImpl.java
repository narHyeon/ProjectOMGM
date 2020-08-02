package com.omgm.admin.mall.service;

import com.omgm.admin.mall.beans.MallToyVO;
import com.omgm.admin.mall.beans.MallToyDAO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service("mallService")
public class MallServiceImpl implements MallService {

    @Autowired
    MallToyDAO mallToyDAO;

    @Override
    public void insertMallToy(MallToyVO vo) {
        mallToyDAO.insertMallToy(vo);
    }
}
