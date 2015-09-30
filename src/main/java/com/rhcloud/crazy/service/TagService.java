package com.rhcloud.crazy.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.rhcloud.crazy.entity.Tag;
import com.rhcloud.crazy.repository.TagRepository;

@Service
public class TagService {
	@Autowired
	private TagRepository tagRepository;
	
	public void save(Tag tag) {
		// TODO Auto-generated method stub
		tagRepository.save(tag);
	}

	public List<Tag> findAll() {
		// TODO Auto-generated method stub
		return tagRepository.findAll();
	}

	public Tag findTagById(int id) {
		// TODO Auto-generated method stub
		return tagRepository.findOne(id);
	}

	public List<Tag> findTagByName(String categoryName) {
		// TODO Auto-generated method stub
		return tagRepository.findTagByName(categoryName);
	}
}
