package com.example.demo.controller;

import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.example.demo.model.Car;
import com.example.demo.model.Person;

@Controller
public class DataViewController {

	@GetMapping("/")
	public String list(@RequestParam(required = false) String action, Map<String, Object> model) {
		model.put("this_time", new Date().toString());

		if ("persons".equals(action)) {
			model.put("persons", getPersons());
		} else if ("cars".equals(action)) {
			model.put("cars", getCars());
		} else if ("attributes".equals(action)) {
			model.put("attributes", getAttributesData());
			return "attributesList";
		}

		return "index";
	}

	private List<Person> getPersons() {

		List<Person> persons = new ArrayList<>();
		persons.add(new Person(1, "Ram"));
		persons.add(new Person(2, "Mohan"));
		persons.add(new Person(3, "Bindu"));

		return persons;
	}

	private List<Car> getCars() {

		List<Car> cars = new ArrayList<>();
		cars.add(new Car(1, "Model 1"));
		cars.add(new Car(2, "Model 2"));
		cars.add(new Car(3, "Model 3"));

		return cars;
	}

	private List<Map<String, String>> getAttributesData() {
		List<Map<String, String>> attributes = new ArrayList<>();
		for (int i = 1; i < 10; i++) {
			Map<String, String> attribute = new HashMap<>();
			attribute.put("id", Integer.toString(i));
			attribute.put("name", "name " + i);
			attributes.add(attribute);
		}

		return attributes;
	}

}
