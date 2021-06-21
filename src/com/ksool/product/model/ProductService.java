package com.ksool.product.model;

import java.sql.SQLException;
import java.util.List;

public class ProductService {
	private ProductDAO productDao;
	
	public ProductService() {
		productDao=new ProductDAO();
	}
	
	public List<ProductVO> selectAll() throws SQLException {
		return productDao.selectAll();
	}
	
}
