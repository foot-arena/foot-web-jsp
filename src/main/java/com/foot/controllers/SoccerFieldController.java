package com.foot.controllers;

import java.io.IOException;
import java.math.BigDecimal;

import javax.ejb.EJB;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.foot.models.SoccerField;
import com.foot.services.SoccerFieldService;
import com.foot.services.ZoneService;

@WebServlet("/fields")
public class SoccerFieldController extends HttpServlet {

	private static final long serialVersionUID = 1L;

	@EJB
	private ZoneService zoneService;
	@EJB
	private SoccerFieldService soccerFieldService;

	public SoccerFieldController() {
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		request.setAttribute("zones", zoneService.findAll());
		request.setAttribute("ranks", SoccerField.Rank.values());
		request.setAttribute("fields", soccerFieldService.findAll());
		request.getRequestDispatcher("/soccer-fields.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		SoccerField fieldToCreate = SoccerField.builder()
				.name(request.getParameter("field_name"))
				.address(request.getParameter("field_address"))
				.capacity(
						Integer.parseInt(request.getParameter("field_capacity")))
				.description(request.getParameter("field_description"))
				.latitude(
						Float.parseFloat(request.getParameter("field_latitude")))
				.longitude(
						Float.parseFloat(request.getParameter("field_longitude")))
				.rank(SoccerField.Rank.valueOf(request.getParameter("field_rank")))
				.zone(zoneService.findById(
						Integer.parseInt(request.getParameter("zone_id"))))
				.price(new BigDecimal(request.getParameter("field_price")))
				.build();
		soccerFieldService.add(fieldToCreate);

		doGet(request, response);
	}

}
