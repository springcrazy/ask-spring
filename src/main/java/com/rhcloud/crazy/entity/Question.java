package com.rhcloud.crazy.entity;

import java.io.Serializable;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;

/**
 * Entity implementation class for Entity: Question
 *
 */
@Entity

public class Question implements Serializable {

	   
	@Id
	@GeneratedValue
	private Integer id;
	private String title;
	private String description;
	@ManyToMany(cascade = {CascadeType.MERGE})
	@JoinTable(name = "questions_tags",
	            joinColumns = @JoinColumn(name = "questions_id"),
	            inverseJoinColumns = @JoinColumn(name = "tags_id"))
	private List<Tag> tags;
	private static final long serialVersionUID = 1L;

	public Question() {
		super();
	}   
	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}   
	public String getTitle() {
		return this.title;
	}

	public void setTitle(String title) {
		this.title = title;
	}   
	public String getDescription() {
		return this.description;
	}

	public void setDescription(String description) {
		this.description = description;
	}
	public List<Tag> getTags() {
		return tags;
	}
	public void setTags(List<Tag> tags) {
		this.tags = tags;
	}
   
}
