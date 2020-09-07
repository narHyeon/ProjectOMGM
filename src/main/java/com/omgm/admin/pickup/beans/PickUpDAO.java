package com.omgm.admin.pickup.beans;

import com.omgm.admin.mall.beans.OrderVO;
import com.omgm.member.beans.MemberVO;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class PickUpDAO {

    @Autowired
    private SqlSessionTemplate sqlSessionTemplate;

    public List<PickUpVO> getPickUpList() {
        return sqlSessionTemplate.selectList("PickUpDAO.getPickUpList");
    }

    public List<MemberVO> getPickUpListInfo() {return sqlSessionTemplate.selectList("PickUpDAO.getPickUpListInfo");
    }
}
