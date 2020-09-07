package com.omgm.admin.pickup.impl;

import com.omgm.admin.mall.beans.OrderVO;
import com.omgm.admin.pickup.beans.PickUpDAO;
import com.omgm.admin.pickup.beans.PickUpVO;
import com.omgm.admin.pickup.service.PickUpService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


import java.util.List;

@Service("PickUpService")
public class PickUpServiceImpl implements PickUpService {

    @Autowired
    PickUpDAO pickUpDAO;

    @Override
    public List<PickUpVO> getPickUpList() throws Exception{
        return pickUpDAO.getPickUpList();
    }

//    @Override
//    public List<PickUpVO> getPickUpListInfo() throws Exception {
//        return pickUpDAO.getPickUpListInfo();
//    }
}
