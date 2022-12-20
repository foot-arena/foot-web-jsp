package com.foot.controllers;

import java.io.IOException;

import javax.ejb.EJB;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.foot.models.City;
import com.foot.services.CityService;
import com.foot.services.CrudService;

@WebServlet("/cities")
public class CityController extends HttpServlet {

	private static final long serialVersionUID = 1L;

	@EJB
	private CityService cityService;
	
	public CityController() {
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		request.setAttribute("cities", cityService.findAll());
		request.getRequestDispatcher("/cities.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		City cityToCreate = City.builder().name(request.getParameter("city_name")).build();
		cityService.add(cityToCreate);

		doGet(request, response);
	}

}
