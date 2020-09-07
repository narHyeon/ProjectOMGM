package com.omgm.admin.pickup.service;

import com.omgm.admin.mall.beans.OrderVO;
import com.omgm.admin.pickup.beans.PickUpVO;

import java.util.List;

public interface PickUpService {

    List<PickUpVO> getPickUpList() throws Exception;

//    List<PickUpVO> getPickUpListInfo() throws Exception;
}