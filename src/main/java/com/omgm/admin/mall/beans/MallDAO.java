package com.omgm.admin.mall.beans;

import com.omgm.admin.mall.beans.MallToyVO;
import org.apache.ibatis.session.SqlSession;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class MallDAO {

    @Autowired
    private SqlSessionTemplate sqlSessionTemplate; // 마이베티스 연결



    /////////////////  toy 관련 DAO 설정  ///////////////////////////////////////////////////////////
    // 장난감 디비테이블에 정보 입력
    public void insertMallToy(MallToyVO vo) {
        sqlSessionTemplate.insert("MallDAO.insertMallToy", vo);
    }

    // 장난감 디비 테이블 정보 수정
    public void updateMallToy(MallToyVO vo) {sqlSessionTemplate.update("MallDAO.updateMallToy", vo);}

    // 장난감 디비 테이블 정보 삭제
    public void deleteMallToy(MallToyVO vo) {sqlSessionTemplate.delete("MallDAO.deleteMallToy", vo);}

    // 장난감 디비 정보 나열
    public List<MallToyVO> getMallToyList () {
        return sqlSessionTemplate.selectList("MallDAO.getMallToyList");
    }

    // 장난감 열 하나 정보 불러오기
    public MallToyVO getMallToyOne(MallToyVO vo) { return sqlSessionTemplate.selectOne("MallDAO.getMallToyOne", vo);}

    // 장난감 이미지 하나 불러오기
    public MallToyVO getMallToyImgOng(MallToyVO vo){return sqlSessionTemplate.selectOne("MallDAO.getMallToyImgOng", vo);}

    /////////////////  feed 관련 DAO 설정  ///////////////////////////////////////////////////////////
    // 사료 유통기한 3일 이하로 남은 리스트
    public List<MallFeedVO> getExpirationFeedList() {
        return sqlSessionTemplate.selectList("MallDAO.getExpirationFeedList");
    }
    // 사료 유통기한 설정
    public void expirationFeed(MallFeedVO vo) {sqlSessionTemplate.update("MallDAO.expirationFeed", vo);}
    // 사료 디비 정보 입력
    public void insertMallFeed(MallFeedVO vo) {
        sqlSessionTemplate.insert("MallDAO.insertMallFeed", vo);
    }

    // 사료 디비 정보 수정
    public void updateMallFeed(MallFeedVO vo) {sqlSessionTemplate.update("MallDAO.updateMallFeed", vo); }

    // 사료 디비 정보 삭제
    public void deleteMallFeed(MallFeedVO vo) {sqlSessionTemplate.delete("MallDAO.deleteMallFeed", vo);}
    // 사료 디비 리시트 불러오기
    public List<MallFeedVO> getMallFeedList () {
        return sqlSessionTemplate.selectList("MallDAO.getMallFeedList");
    }

    // 사료 디비 열 하나 정보 불러오기
    public MallFeedVO getMallFeedOne(MallFeedVO vo) { return sqlSessionTemplate.selectOne("MallDAO.getMallFeedOne", vo);}



}
