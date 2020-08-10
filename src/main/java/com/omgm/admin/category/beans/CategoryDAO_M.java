package com.omgm.admin.category.beans;

import java.util.List;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository("categoryDAO_M")
public class CategoryDAO_M {

	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;
	
	public void insertCategory(List<CategoryVO_M> volist) {
		sqlSessionTemplate.insert("CategoryDAO_M.insertCategory",volist);
	}

	public void updateCategory(CategoryVO_M vo) {
		sqlSessionTemplate.update("CategoryDAO_M.updateCategory",vo);
	}
	
	public void updateManyCategory(List<CategoryVO_M> volist) {
		sqlSessionTemplate.update("CategoryDAO_M.updateManyCategory",volist);
	}
	
	public void deleteCategory(List<CategoryVO_M> volist) {
		sqlSessionTemplate.delete("CategoryDAO_M.deleteCategory",volist);
	}
	public CategoryVO_M selectCategory(CategoryVO_M vo) {
		return sqlSessionTemplate.selectOne("CategoryDAO_M.selectCategory",vo);
	}
	public List<CategoryVO_M> selectListAllCategory(){
		return sqlSessionTemplate.selectList("CategoryDAO_M.selectListAllCategory");
	}


	
}
