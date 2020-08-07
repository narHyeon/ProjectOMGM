package com.omgm.admin.category.beans;

import java.util.List;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository("categoryDAO_M")
public class CategoryDAO_M {

	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;
	
	public void insertCategory(CategoryVO_M vo) {
		sqlSessionTemplate.insert("CategoryDAO_M.insertCategory",vo);
	}

	public void updateCategory(CategoryVO_M vo) {
		sqlSessionTemplate.update("CategoryDAO_M.updateCategory",vo);
	}

	public void deleteCategory(CategoryVO_M vo) {
		sqlSessionTemplate.delete("CategoryDAO_M.deleteCategory",vo);
	}
	public CategoryVO_M selectCategory(CategoryVO_M vo) {
		return sqlSessionTemplate.selectOne("CategoryDAO_M.selectCategory",vo);
	}
	public List<CategoryVO_M> selectListAllCategory(CategoryVO_M vo){
		return sqlSessionTemplate.selectList("CategoryDAO_M.selectListAllCategory", vo);
	}
	
}
