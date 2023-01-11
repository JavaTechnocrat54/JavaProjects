package com.shopeme.admin.category;

import java.util.ArrayList;
import java.util.List;
import java.util.Set;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.shopeme.common.entity.Category;



@Service
public class CategoryService {

	@Autowired
	public CategoryRepository repo;
	
	public List<Category> listAll(){
		List<Category> rootCategories=repo.findRootCategories();
		
		
		return listHierarchicalCategories(rootCategories);
	}
	private List<Category> listHierarchicalCategories(List<Category> rootCategories){
		List<Category> hierarchicalCategories=new ArrayList<>();
		for (Category rootCategory :rootCategories) {
			hierarchicalCategories.add(Category.copyFull(rootCategory));
			
		Set<Category> children=	rootCategory.getChilderen();
		for(Category subCategory : children) {
			String name="--"+subCategory.getName();
			hierarchicalCategories.add(Category.copyFull(subCategory,name));
			listSubHierarchicalCategories(hierarchicalCategories,subCategory,1);
		}
		}
		return hierarchicalCategories;
	}
	private void listSubHierarchicalCategories(List<Category> hierarchicalCategories,Category parent,int sublevel) {
		int newSubLevel=sublevel+1;
		Set<Category> children=	parent.getChilderen();
		for(Category subCategory:children) {
			String name="";
			for(int i=0;i<newSubLevel;i++ ) {
				name +="--";
		}
			name+=subCategory.getName();
			hierarchicalCategories.add(Category.copyFull(subCategory,name));
			
			listSubCategoryUsedInform(hierarchicalCategories, subCategory, newSubLevel);
		}
	}
	public Category save(Category category) {
		return repo.save(category);
	}
	public List<Category> listCategoryisUsedInForm(){
		List<Category> categoriesUserdInForm=new ArrayList<>();
		Iterable<Category> caregoriesInDB=	repo.findAll();
		
		
		for(Category category :caregoriesInDB) {
			if(category.getParent()==null) {
				
				categoriesUserdInForm.add(Category.copyIdAndName(category));
				Set<Category> children=category.getChilderen();
				for(Category subCategory :children) {
					String name="--" + subCategory.getName();
					categoriesUserdInForm.add(Category.copyIdAndName(subCategory.getId(),name));
					listSubCategoryUsedInform(categoriesUserdInForm,subCategory ,1);
				}
				
				
			}
		}
		return categoriesUserdInForm;
	}
	private void listSubCategoryUsedInform(	List<Category> categoriesUserdInForm,Category parent,int subLevel) {
		int newSubLevel=subLevel+1;
		Set<Category> children=parent.getChilderen();
		
		for(Category subCategory:children) {
			String name="";
			for(int i=0;i<newSubLevel;i++ ) {
				name +="--";
			}
			name+=subCategory.getName();
			categoriesUserdInForm.add(Category.copyIdAndName(subCategory.getId(),name));
			listSubCategoryUsedInform(categoriesUserdInForm,subCategory,newSubLevel);
		}
	}
	
	
}
