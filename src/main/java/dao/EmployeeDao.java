package dao;

import model.Employee;
import model.Login;

import javax.xml.transform.Result;
import java.sql.*;

public class EmployeeDao {

    private String jdbcURL = "jdbc:mysql://localhost:3306/employees";
    private String username = "root";
    private String password = "root";

    private static final String INSERT_EMPLOYEE = "INSERT INTO " +
            "employee (first_name, last_name, username, password, address, contact) " +
            "VALUES(?, ?, ?, ?, ?, ?);";
    private static final String LOGIN_SQL = "Select username, password FROM employee WHERE username = ? and password = ?";
    private static final String SELECTED_USER = "Select * FROM employee WHERE username = ?;";


    //JDBC
    public Connection getConnect(){
        Connection connect = null;
        try{
            Class.forName("com.mysql.jdbc.Driver");
            connect = DriverManager.getConnection(jdbcURL, username, password);
        }catch (SQLException ex){
            ex.printStackTrace();
        }catch (ClassNotFoundException ex){
            ex.printStackTrace();
        }
        return connect;
    }

    //InsertEmployee
    public void registerEmployee(Employee employee){
        try(Connection connect = getConnect();
            PreparedStatement statement = connect.prepareStatement(INSERT_EMPLOYEE)){
            statement.setString(1, employee.getFirstName());
            statement.setString(2, employee.getLastName());
            statement.setString(3, employee.getUsername());
            statement.setString(4, employee.getPassword());
            statement.setString(5, employee.getAddress());
            statement.setString(6, employee.getContact());

            statement.executeUpdate();
        }catch (SQLException e){
            e.printStackTrace();
        }
    }

    //Validate
    public boolean validate(Login login){
        boolean validate = false;
        try(Connection connect = getConnect();
            PreparedStatement statement = connect.prepareStatement(LOGIN_SQL)){

            statement.setString(1, login.getUsername());
            statement.setString(2, login.getPassword());

            ResultSet rs = statement.executeQuery();

            validate = rs.next();

        }catch (SQLException exception){
            exception.printStackTrace();
        }
        return validate;
    }

    public Employee employeeData(String username){
        Employee employee = new Employee();
        try(Connection connect = getConnect();
            PreparedStatement statement = connect.prepareStatement(SELECTED_USER)){

            statement.setString(1, username);
            statement.execute();

            ResultSet resultSet = statement.getResultSet();
            while(resultSet.next()){
                Integer id = resultSet.getInt("id");
                String firstName = resultSet.getString("first_name");
                String lastName = resultSet.getString("last_name");
                String password = resultSet.getString("password");
                String address = resultSet.getString("address");
                String country = resultSet.getString("contact");

                employee = new Employee(id, firstName, lastName, username, password, address, country);
            }
            return employee;
        }catch (SQLException exception){
            exception.printStackTrace();
            return null;
        }

    }
}
