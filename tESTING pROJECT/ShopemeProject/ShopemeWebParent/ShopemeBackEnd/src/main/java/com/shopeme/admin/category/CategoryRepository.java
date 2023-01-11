package com.shopeme.admin.category;

import java.util.List;

import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.PagingAndSortingRepository;

import com.shopeme.common.entity.Category;

public interface CategoryRepository extends PagingAndSortingRepository<Category,Integer> {
@Query("SELECT c FROM Category c WHERE c.parent.id is NULL")
	public List<Category> findRootCategories();
	
	
}
