package com.shopme.admin.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.shopme.common.entity.section.Section;

public interface SectionRepository extends JpaRepository<Section, Integer> {

	
}
