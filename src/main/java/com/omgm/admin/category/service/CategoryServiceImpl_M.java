package com.omgm.admin.category.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.omgm.admin.category.beans.CategoryDAO_M;
import com.omgm.admin.category.beans.CategoryVO_M;

@Service("categoryService_M")
public class CategoryServiceImpl_M implements CategoryService_M{

	@Autowired
	CategoryDAO_M categoryDAO_M;

	@Override
	public void insertCategory(CategoryVO_M vo) {
		categoryDAO_M.insertCategory(vo);
	}

	@Override
	public void updateCategory(CategoryVO_M vo) {
		categoryDAO_M.updateCategory(vo);
	}
	
	@Override
	public void updateManyCategory(List<CategoryVO_M> volist) {
		categoryDAO_M.updateManyCategory(volist);
	}

	@Override
	public void deleteCategory(List<CategoryVO_M> volist) {
		categoryDAO_M.deleteCategory(volist);
	} 
	
	@Override
	public CategoryVO_M selectCategory(CategoryVO_M vo) {
		return categoryDAO_M.selectCategory(vo);
	}

	@Override
	public List<CategoryVO_M> selectListAllCategory(CategoryVO_M vo) {
		return categoryDAO_M.selectListAllCategory(vo);
	}




}
