package com.rhcloud.crazy.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import com.rhcloud.crazy.entity.Tag;

public interface TagRepository extends JpaRepository<Tag, Integer> {
	@Query("select t from Tag t join t.questions q where q.title = :title")
	List<Tag> findTagByQuestion(@Param("title") String title);
	
	@Query("SELECT t FROM Tag t WHERE name LIKE CONCAT('%', :name, '%')")
	List<Tag> findTagByName(@Param("name") String name);
}
