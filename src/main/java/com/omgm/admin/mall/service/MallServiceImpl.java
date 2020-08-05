package com.omgm.admin.mall.service;


import com.omgm.admin.mall.beans.MallOrderDAO;
import com.omgm.admin.mall.beans.MallOrderVO;
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

    //  ###### 장난감 관련 서비스 ###########################################################
    // 장난감(상품) 등록 삭제
    @Override
    public void deleteMallToy(MallToyVO vo) throws Exception {
        mallDAO.deleteMallToy(vo);
    }

    // 장난감(상품) 등록
    @Override
    public void insertMallToy(MallToyVO vo) {
        mallDAO.insertMallToy(vo);
    }

    // 장난감(상품) 수정
    @Override
    public void updateMallToy(MallToyVO vo) throws Exception {
        mallDAO.updateMallToy(vo);
    }

    // 장난감(상품)목록 나열
    @Override
    public List<MallToyVO> getMallToyList() throws Exception{
        return mallDAO.getMallToyList();
    }

    // 장난감(상품) 상세정보 페이지
    @Override
    public MallToyVO getMallToyOne(MallToyVO vo) throws Exception {
        return mallDAO.getMallToyOne(vo);
    }

    // 사료(상품) 상세정보 페이지
    @Override
    public MallFeedVO getMallFeedOne(MallFeedVO vo) throws Exception {
        return mallDAO.getMallFeedOne(vo);
    }

    //  ###### 사료 관련 서비스 ###########################################################

    // 사료(상품) 상품등록
    @Override
    public void insertMallFeed(MallFeedVO vo) throws Exception {
        mallDAO.insertMallFeed(vo);
    }

    // 사료(상품) 상품 삭제
    @Override
    public void deleteMallFeed(MallFeedVO vo) throws Exception {
        mallDAO.deleteMallFeed(vo);
    }

    // 사료(상품) 수정(업데이트)
    @Override
    public void updateMallFeed(MallFeedVO vo) throws Exception {
        mallDAO.updateMallFeed(vo);
    }

    // 사료(상품)목록 나열
    @Override
    public List<MallFeedVO> getMallFeedList() throws Exception {
        return mallDAO.getMallFeedList();
    }

//  #################################################################
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
