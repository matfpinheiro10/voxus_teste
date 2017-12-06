package com.voxus.repository;

import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.PagingAndSortingRepository;
import org.springframework.stereotype.Repository;

import com.voxus.model.Task;

@Repository
public interface TaskRepository extends PagingAndSortingRepository<Task, Long> {

	@Query("SELECT c FROM Task c ")
	List<Task> findAllTasks();
}
