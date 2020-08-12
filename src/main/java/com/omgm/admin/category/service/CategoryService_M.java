package com.omgm.admin.category.service;

import java.util.List;

import com.omgm.admin.category.beans.CategoryVO_M;

public interface CategoryService_M {

	public void insertCategory(List<CategoryVO_M> volist);
	
	public void updateCategory(CategoryVO_M vo);
	
	public void updateManyCategory(List<CategoryVO_M> volist);
	
	public void deleteCategory(List<CategoryVO_M> volist);
	
	public CategoryVO_M selectCategory(CategoryVO_M vo);
	
	public List<CategoryVO_M> selectListAllCategory();

	List<CategoryVO_M> selectListUseCategory();

	
}
