package com.shopeme.admin.catogory;

import static org.assertj.core.api.Assertions.assertThat;
import static org.junit.jupiter.api.Assertions.assertAll;
import static org.junit.jupiter.api.Assertions.fail;

import java.util.List;
import java.util.Set;

import org.hibernate.internal.build.AllowSysOut;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.autoconfigure.jdbc.AutoConfigureTestDatabase;
import org.springframework.boot.test.autoconfigure.jdbc.AutoConfigureTestDatabase.Replace;
import org.springframework.boot.test.autoconfigure.orm.jpa.DataJpaTest;
import org.springframework.test.annotation.Rollback;

import com.shopeme.admin.category.CategoryRepository;
import com.shopeme.common.entity.Category;

@DataJpaTest
@AutoConfigureTestDatabase(replace = Replace.NONE)
@Rollback(false)
public class CategoryrepositoryTest {

	@Autowired
	private CategoryRepository repo;
	
	@Test
	public void testCreateRootCategory() {
		Category category =new Category("Electronics");
	Category saveCategory=	repo.save(category);
	assertThat(saveCategory.getId()).isGreaterThan(0);
	}
	@Test
	public void testCreateSubCategory() {
		Category parent=new Category(9);
		Category subCateGory=new Category("Momery",parent);
		Category saveCategory=	repo.save(subCateGory);
		assertThat(saveCategory.getId()).isGreaterThan(0);
		
	}
	@Test
	public void testGetCatagory() {
		Category category=repo.findById(4).get();
		System.out.println(category.getName());
		Set<Category> children=category.getChilderen();
		for(Category subCategory : children) {
			System.out.println(subCategory.getName());
		}
		assertThat(children.size()).isGreaterThan(0);
	}
	@Test
	public void testPrintHirechicalcategory() {
	Iterable<Category> cateIterable=	repo.findAll();
	for(Category category :cateIterable) {
		if(category.getParent()==null) {
			System.out.println(category.getName());
			
			Set<Category> children=category.getChilderen();
			for(Category subcaCategory :children) {
				System.out.println("--"+subcaCategory.getName());
			}
			
			
		}
	}
	}
	@Test
	public void testListRootCategories() {
		List<Category> rootCategories =repo.findRootCategories();
		rootCategories.forEach(cat-> System.out.println(cat.getName()));
	}
	
}
