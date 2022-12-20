package com.foot.controllers;

import java.io.IOException;

import javax.ejb.EJB;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.foot.models.Zone;
import com.foot.services.CityService;
import com.foot.services.ZoneService;

@WebServlet("/zones")
public class ZoneController extends HttpServlet {

	private static final long serialVersionUID = 1L;

	@EJB
	private ZoneService zoneService;
	@EJB
	private CityService cityService;

	public ZoneController() {
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		request.setAttribute("zones", zoneService.findAll());
		request.setAttribute("cities", cityService.findAll());
		request.getRequestDispatcher("/zones.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		Zone zoneToCreate = Zone.builder()
				.name(request.getParameter("zone_name"))
				.city(cityService.findById(
						Integer.parseInt(request.getParameter("city_id"))))
				.build();
		zoneService.add(zoneToCreate);

		doGet(request, response);
	}

}
