package controller;

import dao.EmployeeDao;
import model.Employee;
import model.Login;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;

@WebServlet(name = "Login", urlPatterns = {"/login"})
public class LoginController extends HttpServlet {
    private EmployeeDao employeeDao;

    @Override
    public void init() throws ServletException {
        employeeDao = new EmployeeDao();
    }

    @Override
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher("login.jsp").forward(request, response);
    }

    @Override
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String username = request.getParameter("username");
        String password = request.getParameter("password");

        Login login = new Login(username, password);

        EmployeeDao employeeDao = new EmployeeDao();;
        Employee employee = employeeDao.employeeData(username);

        if (employeeDao.validate(login)){
            HttpSession session = request.getSession();
            session.setAttribute("employee", employee);

            response.sendRedirect("account");
        }else{
            request.getRequestDispatcher("/login").forward(request, response);
        }
    }
}
























