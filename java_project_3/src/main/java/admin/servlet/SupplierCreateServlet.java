package admin.servlet;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

import admin.DAO.CategoriesDAOImpl;
import admin.DAO.SupplierDAOImpl;
import admin.entity.Suppliers;

/**
 * Servlet implementation class SupplierCreateServlet
 */
@WebServlet("/SupplierCreate")
public class SupplierCreateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SupplierCreateServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		
		RequestDispatcher dispatcher = request.getServletContext().getRequestDispatcher("/WEB-INF/view/admin/SupplierCreate.jsp");
		dispatcher.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("UTF-8");
		String errorString = null;
		//Lấy dữ liệu trên form
		String supplierName = (String) request.getParameter("supplierName");
		
		
		
		Suppliers newSupplier = new Suppliers(supplierName);
		// Kiểm tra code ít nhất 1 ký tự là 0-9]
		
		
		try {
			boolean flag = new SupplierDAOImpl().insertSupplier(newSupplier);
			if(flag == true) {
				response.sendRedirect(request.getContextPath() + "/SupplierList");
			}
			
		} catch (Exception e) {
			e.printStackTrace();
			errorString = e.getMessage();
			request.setAttribute("errorString", errorString);
			RequestDispatcher dispatcher = request.getServletContext().getRequestDispatcher("/WEB-INF/view/admin/SupplierCreate.jsp");
			dispatcher.forward(request, response);
		}
	}

}
