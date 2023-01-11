package com.shopeme.common.entity;

import java.util.HashSet;
import java.util.Set;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.Table;
@Entity
@Table(name="categories")
public class Category {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer id;
	@Column(length = 128,nullable = false,unique = true)
	private String name;
	
	@Column(length = 64,nullable = false,unique = true)
	private String alias;
	
	@Column(length = 128,nullable = false)
	private String image;
	
	private boolean enabled;
	
	@OneToOne
	@JoinColumn(name = "parenet_id")
	private Category parent;
	
	@OneToMany(mappedBy = "parent")
	private Set<Category> childeren =new HashSet<>();

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getAlias() {
		return alias;
	}

	public void setAlias(String alias) {
		this.alias = alias;
	}

	public String getImage() {
		return image;
	}

	public void setImage(String image) {
		this.image = image;
	}

	public boolean isEnabled() {
		return enabled;
	}

	public void setEnabled(boolean enabled) {
		this.enabled = enabled;
	}

	public Category getParent() {
		return parent;
	}

	public void setParent(Category parent) {
		this.parent = parent;
	}

	public Set<Category> getChilderen() {
		return childeren;
	}

	public void setChilderen(Set<Category> childeren) {
		this.childeren = childeren;
	}

	public Category(String name) {
		
		this.name = name;
		this.alias=name;
		this.image="defult.png";
	} 
public static  Category copyIdAndName(Category category) {
		Category copycategory= new Category();
		copycategory.setId(category.getId());
		copycategory.setName(category.getName());
		return copycategory;
		
	} 
public static  Category copyIdAndName(Integer id,String name) {
	Category copycategory= new Category();
	copycategory.setId(id);
	copycategory.setName(name);
	return copycategory;
	
} 
public static  Category copyFull(Category category) {
	Category copycategory= new Category();
	copycategory.setId(category.getId());
	copycategory.setName(category.getName());
	copycategory.setImage(category.getImage());
	copycategory.setAlias(category.getAlias());
	copycategory.setEnabled(copycategory.isEnabled());
	return copycategory;
	
} 
public static  Category copyFull(Category category,String name) {
	Category copycategory= Category.copyFull(category);
	
	copycategory.setName(name);
	
	return copycategory;
	
} 

public Category(String name,Category parent) {
		
		this(name);
		this.parent=parent;
	}

public Category(Integer id) {
	
	this.id = id;
} 
public Category() {
} 

}
