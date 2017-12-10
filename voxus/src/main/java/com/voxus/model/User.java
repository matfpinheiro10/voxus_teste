package com.voxus.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

import org.hibernate.annotations.GenericGenerator;
import org.hibernate.annotations.Parameter;

@Entity
public class User {

	@Id
	@GenericGenerator(name = "gerador_sequencia", strategy = "org.hibernate.id.enhanced.SequenceStyleGenerator", parameters = {
			@Parameter(name = "sequence_name", value = "USERS_SEQ"), @Parameter(name = "initial_value", value = "100"),
			@Parameter(name = "increment_size", value = "1") })
	@GeneratedValue(generator = "gerador_sequencia")
	private Long id;

	@Column(unique = true, nullable = false)
	private String username;

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

}
