package com.rhcloud.crazy.service;

import javax.annotation.PostConstruct;
import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.rhcloud.crazy.entity.Tag;
import com.rhcloud.crazy.repository.TagRepository;

@Transactional
@Service
public class InitDbService {
	
	@Autowired
	private TagRepository tagRepository;
	
	@PostConstruct
	public void initialize() {
		Tag tagj = new Tag();		
		tagj.setName("java");		
		tagRepository.save(tagj);
		
		Tag taga = new Tag();
		taga.setName("android");
		tagRepository.save(taga);
	}
	
	
}
