package servlet;

import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.Driver;
import service.web_service;

/**
 * Servlet implementation class adddriver
 */
@WebServlet("/adddriver")
public class adddriver extends HttpServlet {
    private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public adddriver() {
        super();
        // TODO Auto-generated constructor stub
    }

    /**
     * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
     */
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // TODO Auto-generated method stub
        response.getWriter().append("Served at: ").append(request.getContextPath());
    }

    /**
     * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
     */
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Driver app1 = new Driver();
        app1.setDriverid(request.getParameter("driverid"));
        app1.setName(request.getParameter("name"));
        app1.setAddress(request.getParameter("address"));
        app1.setContact(Integer.parseInt(request.getParameter("contact")));
        app1.setDob(request.getParameter("dob"));
        app1.setIdnum(request.getParameter("idnum"));
        app1.setLicen(request.getParameter("licen"));

        web_service app2 = new web_service();
        boolean success = app2.add_driver(app1); // Assuming this method returns a boolean indicating success or failure

        
        Cookie driverCookie = new Cookie("driverid", app1.getDriverid());
        driverCookie.setMaxAge(60 * 60 * 24); 
        response.addCookie(driverCookie);

        if (success) {
            response.getWriter().println("<script>alert('Driver added successfully!'); window.location='home.jsp';</script>");
        } else {
            response.getWriter().println("<script>alert('Driver addition failed. Please try again!'); window.location='register.jsp';</script>");
        }
    }
}
