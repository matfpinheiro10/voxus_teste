package com.voxus.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.voxus.model.Task;
import com.voxus.repository.TaskRepository;

@Service
public class TaskServiceBean implements TaskService {

	@Autowired
	private TaskRepository taskRepository;

	public Task findById(Long id) {
		return taskRepository.findOne(id);
	}

	public void saveTask(Task obj) {
		taskRepository.save(obj);
	}

	public void deleteTaskById(Long id) {
		taskRepository.delete(id);
	}

	public List<Task> findAllTasks() {
		return taskRepository.findAllTasks();
	}

	public boolean isTaskExist(Task task) {
		return findById(task.getId()) != null;
	}

	@Override
	public void updateTask(Task task) {
		List<Task> allTasks = taskRepository.findAllTasks();
		int index = allTasks.indexOf(task);
		allTasks.set(index, task);
	}

	public void deleteTaskById(long id) {

		Task taskRemoved = taskRepository.findOne(id);
		taskRepository.delete(taskRemoved);
		
	}
}
