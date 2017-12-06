package com.voxus.service;

import java.util.List;

import com.voxus.model.Task;

public interface TaskService {

	Task findById(Long id);

	boolean isTaskExist(Task task);

	void updateTask(Task task);

	List<Task> findAllTasks();

	void saveTask(Task obj);

	void deleteTaskById(Long id);

}
