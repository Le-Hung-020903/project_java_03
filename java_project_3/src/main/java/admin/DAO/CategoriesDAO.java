package admin.DAO;

import java.util.List;

import admin.entity.Categories;

public interface CategoriesDAO {
	public List<Categories> getAllCategory();
	public Categories getCategoryById(int id);
	public boolean insertCategory(Categories category);
	public boolean updateCategory(Categories category);
	public boolean deleteCategory(int id); 
}
