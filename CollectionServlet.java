package it.cefi.controllers;

import java.io.IOException;

import it.cefi.models.Collection;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/servletConnector")
public class CollectionServlet extends HttpServlet{

	private static final long serialVersionUID = 1L;
	
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		
		Collection collectionNumbers = new Collection();
		
		String index = request.getParameter("index");
		collectionNumbers.setIndex(Integer.parseInt(index));
		String result = collectionNumbers.binarySearch();
		
		response.setContentType("text/html");
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("index.jsp");
		request.setAttribute("result", result);
		dispatcher.forward(request, response);
	}

}
