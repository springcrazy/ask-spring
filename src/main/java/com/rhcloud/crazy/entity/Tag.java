package com.rhcloud.crazy.entity;

import java.io.Serializable;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.ManyToMany;

/**
 * Entity implementation class for Entity: Tag
 *
 */
@Entity

public class Tag implements Serializable {

	   
	@Id
	@GeneratedValue
	private Integer id;
	private String name;
	private String description;
	
	@ManyToMany(mappedBy = "tags", cascade = {CascadeType.MERGE})	
	private List<Question> questions;
	
	private static final long serialVersionUID = 1L;

	public Tag() {
		super();
	}   
	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}   
	public String getName() {
		return this.name;
	}

	public void setName(String name) {
		this.name = name;
	}   
	public String getDescription() {
		return this.description;
	}

	public void setDescription(String description) {
		this.description = description;
	}
	public List<Question> getQuestions() {
		return questions;
	}
	public void setQuestions(List<Question> questions) {
		this.questions = questions;
	}
   
}
