package com.voxus.web;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.util.UriComponentsBuilder;

import com.voxus.model.Task;
import com.voxus.service.TaskService;

@RestController
public class TaskController {

	@Autowired
	private TaskService taskService;

	//Recupera uma task pelo id passado como parametro na url.
	@RequestMapping(value = "/task/{id}", method = RequestMethod.GET, produces = MediaType.APPLICATION_JSON_VALUE)
	public ResponseEntity<Task> getTask(@PathVariable("id") long id) {

		try {
			Task task = taskService.findById(id);
			return new ResponseEntity<Task>(task, HttpStatus.OK);
		} catch (Exception e) {
			e.printStackTrace();
			return new ResponseEntity<Task>(HttpStatus.BAD_REQUEST);
		}

	}

	//Cria uma task atraves do JSON passado pelo body da chamada.
	@RequestMapping(value = "/createTask/", method = RequestMethod.POST)
	public ResponseEntity<String> createTask(@RequestBody Task task, UriComponentsBuilder ucBuilder) {

		if (taskService.isTaskExist(task)) {
			return new ResponseEntity<String>(HttpStatus.CONFLICT);
		}

		taskService.saveTask(task);

		HttpHeaders headers = new HttpHeaders();
		headers.setLocation(ucBuilder.path("/task/{id}").buildAndExpand(task.getId()).toUri());
		return new ResponseEntity<String>("Task criada com sucesso!", headers, HttpStatus.CREATED);
	}

	//Recupera uma task pelo id e depois faz a atualização.
	@RequestMapping(value = "/task/{id}", method = RequestMethod.PUT)
	public ResponseEntity<Task> updateTask(@PathVariable("id") long id, @RequestBody Task task) {
		System.out.println("Updating Task " + id);

		Task currentTask = taskService.findById(id);

		if (currentTask == null) {
			System.out.println("Task with id " + id + " not found");
			return new ResponseEntity<Task>(HttpStatus.NOT_FOUND);
		}

		currentTask.setTitle(task.getTitle());
		currentTask.setDescription(task.getDescription());
		currentTask.setUser(task.getUser());
		currentTask.setPriority(task.getPriority());

		taskService.saveTask(currentTask);
		return new ResponseEntity<Task>(currentTask, HttpStatus.OK);
	}

	//Exclui uma task pelo id passado como parametro na url.
	@RequestMapping(value = "/taskRemove/{id}", method = RequestMethod.DELETE)
	public ResponseEntity<String> deleteTask(@PathVariable("id") long id) {

		Task task = taskService.findById(id);
		if (task == null) {
			System.out.println("Unable to delete. Task with id " + id + " not found");
			return new ResponseEntity<String>(HttpStatus.NOT_FOUND);
		}

		taskService.deleteTaskById(id);
		
		return new ResponseEntity<String>("Task deletada com sucesso.", HttpStatus.NO_CONTENT);
	}

	//Recupera todas as Task cadastradas no banco.
	@RequestMapping(value = "/taskList/", method = RequestMethod.GET)
	public ResponseEntity<List<Task>> getListTasks() {

		try {

			List<Task> tasks = taskService.findAllTasks();
			return new ResponseEntity<List<Task>>(tasks, HttpStatus.OK);

		} catch (Exception e) {
			e.printStackTrace();
			return new ResponseEntity<List<Task>>(HttpStatus.BAD_REQUEST);
		}

	}

}