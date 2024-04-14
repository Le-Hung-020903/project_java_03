package servlet;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import conn.ConnectionUtils;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/sign-in")
public class SignInServlet extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		RequestDispatcher dispatcher = req.getServletContext().getRequestDispatcher("/WEB-INF/view/sign_in.jsp");
        dispatcher.forward(req,resp);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		  resp.setContentType("text/html;charset=UTF-8");
	        String errorString = null;
	        String email = req.getParameter("email");
	        String password = req.getParameter("password");

	        try {
	            if (email != null && password != null) {
	                Connection connection = ConnectionUtils.getMSSQLConnections();
	                String sql = "SELECT * FROM users WHERE email = ? AND password = ?";
	                try (PreparedStatement preparedStatement = connection.prepareStatement(sql)) {
	                    preparedStatement.setString(1, email);
	                    preparedStatement.setString(2, password);

	                    try (ResultSet resultSet = preparedStatement.executeQuery()) {
	                        if (resultSet.next()) {
	                            resp.sendRedirect(req.getContextPath()+"/index_logined");
	                        } else {
	                           errorString = "tài khoản mật khẩu không chính xác.";
	                           req.setAttribute("errorString",errorString);
	                        }
	                    }
	                }

	                connection.close();
	            } else {
	                errorString = "Lỗi không xác định.";
	                req.setAttribute("errorString",errorString);
	            }
	        } catch (Exception ex) {
	            errorString = ex.getMessage();
	            req.setAttribute("errorString",errorString);
	        }
	}

}
