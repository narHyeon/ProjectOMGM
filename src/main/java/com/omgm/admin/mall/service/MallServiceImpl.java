package com.omgm.admin.mall.service;

import com.omgm.admin.mall.beans.MallOrderDAO;
import com.omgm.admin.mall.beans.MallOrderVO;
import com.omgm.admin.mall.beans.MallToyVO;
import com.omgm.admin.mall.beans.MallToyDAO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service("mallService")
public class MallServiceImpl implements MallService {

    @Autowired
    MallToyDAO mallToyDAO;

    @Override
    public void insertMallToy(MallToyVO vo) {
        mallToyDAO.insertMallToy(vo);
    }

    @Override
    public List<MallToyVO> getMallToyList() throws Exception{
        return mallToyDAO.getMallToyList();
    }

    @Autowired
    MallOrderDAO mallOrderDAO;

    @Override
    public void insertMallOrder(MallOrderVO vo) {
        mallOrderDAO.insertMallOrder(vo);
    }

    @Override
    public void deleteMallOrder(MallOrderVO vo) {
         mallOrderDAO.deleteMallOrder(vo);
    }

    @Override
    public List<MallOrderVO> getMallOrderList() throws Exception{
        return mallOrderDAO.getMallOrderList();
    }

}
