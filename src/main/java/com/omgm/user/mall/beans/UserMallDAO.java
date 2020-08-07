package com.omgm.user.mall.beans;

import com.omgm.admin.mall.beans.MallFeedVO;
import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class UserMallDAO {

    @Autowired
    private SqlSessionTemplate sqlSessionTemplate;

    ///////////// 사료 관련 메서드 //////////////////
    // 사료 상품 나열(페이징 처리 추가)
    public List<UserMallFeedVO> getMallFeedList (UserMallFeedVO vo, PageNavigatorMall navi) {
        RowBounds rb = new RowBounds(navi.getStartRecord(),navi.getCountPerPage());
        return sqlSessionTemplate.selectList("UserMallDAO.getMallFeedList",vo, rb);
    }

        // feed의 사료 상품 갯수
        public int selectCountMall(){
        return sqlSessionTemplate.selectOne("UserMallDAO.selectCountMall");
    }

    ///////////// 장난감 관련 메서드 //////////////////
    // 장난감 상품 나열(페이징 처리 추가)
    public List<UserMallToyVO> getMallToyList (UserMallToyVO vo, PageNavigatorMall navi) {
        RowBounds rb = new RowBounds(navi.getStartRecord(),navi.getCountPerPage());
        return sqlSessionTemplate.selectList("UserMallDAO.getMallToyList",vo, rb);
    }
    // 장난감 상품 갯수
    public int selectCountToyMall(){
        return sqlSessionTemplate.selectOne("UserMallDAO.selectCountToyMall");
    }
    // 장난감 정보 가져오기
    public UserMallToyVO getMallToyOneInfo(UserMallToyVO vo) {
        return sqlSessionTemplate.selectOne("UserMallDAO.getMallToyOneInfo",vo);
    }
}
