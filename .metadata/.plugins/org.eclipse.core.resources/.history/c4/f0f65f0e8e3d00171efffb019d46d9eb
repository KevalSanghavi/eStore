package com.estore.dao.impl;

import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.estore.dao.ProductDao;
import com.estore.model.Product;

@Repository
@Transactional
public class ProductDaoImpl implements ProductDao {

	@Autowired
	private SessionFactory sessionFactory;

	public void addProduct(Product product) {
		Session session = sessionFactory.openSession();
		Transaction tx = null;
		try {
			tx = session.beginTransaction();
			session.saveOrUpdate(product);
			tx.commit();
		} catch (HibernateException e) {
			if (null != tx) {
				tx.rollback();
				e.printStackTrace();
			}
		} finally {
			session.close();
		}
	}

	public Product getProductById(long productId) {
		Session session = sessionFactory.openSession();
		Transaction tx = null;
		Product product = null;
		try {
			tx = session.beginTransaction();
			product = (Product) session.get(Product.class, productId);
			tx.commit();
		} catch (HibernateException e) {
			if (null != tx) {
				tx.rollback();
				e.printStackTrace();
			}
		} finally {
			session.close();
		}
		return product;
	}

	public List<Product> getAllProducts() {
		Session session = sessionFactory.openSession();
		Transaction tx = null;
		List<Product> products = null;
		try {
			tx = session.beginTransaction();
			products = session.createQuery("FROM Product").list();
			tx.commit();
		} catch (HibernateException e) {
			if (null != tx) {
				tx.rollback();
				e.printStackTrace();
			}
		} finally {
			session.close();
		}
		return products;
	}

	public void deleteProduct(long productId) {
		Session session = sessionFactory.openSession();
		Transaction tx = null;
		try {
			tx = session.beginTransaction();
			Product product = (Product) session.get(Product.class, productId);
			session.delete(product);
			tx.commit();
		} catch (HibernateException e) {
			if (null != tx) {
				tx.rollback();
				e.printStackTrace();
			}
		} finally {
			session.close();
		}
	}

}
