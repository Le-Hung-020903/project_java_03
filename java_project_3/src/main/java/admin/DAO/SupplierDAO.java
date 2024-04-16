package admin.DAO;

import java.util.List;

import admin.entity.Suppliers;

public interface SupplierDAO {
	public List<Suppliers> getAllSupplier();
	public Suppliers getSupplierById(int id);
	public boolean insertSupplier(Suppliers category);
	public boolean updateSupplier(Suppliers category);
	public boolean deleteSupplier(int id); 
}
