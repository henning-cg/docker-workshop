package com.training.docker.springapp.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import com.training.docker.springapp.entity.Item;
import com.training.docker.springapp.service.ItemService;

@RestController
public class ItemController {
	
	@Autowired
	private ItemService itemService;
	
	@GetMapping("/")
	public List<Item> items() {
		return itemService.findAll();
	}

}
