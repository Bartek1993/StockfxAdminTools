package com.example.demo;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@SpringBootApplication
public class DemoApplication {


	public static void main(String[] args) {
		SpringApplication.run(DemoApplication.class, args);
	}

	@WebServlet("/ControlFlowServlet")
	public class ControlFlowServlet extends HttpServlet {
		protected void doGet(HttpServletRequest request,
							 HttpServletResponse response) throws ServletException, IOException {
			RequestDispatcher dispatcher = getServletContext()
					.getRequestDispatcher("/WEB-INF/index.jsp");
			dispatcher.forward(request, response);
		}

		protected void doPost(HttpServletRequest request,
							  HttpServletResponse response) throws ServletException, IOException {
			doGet(request, response);
		}

	}


}

