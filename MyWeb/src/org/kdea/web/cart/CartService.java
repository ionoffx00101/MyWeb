package org.kdea.web.cart;

import java.sql.Date;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

public class CartService {

	HttpServletRequest request;

	public CartService(HttpServletRequest request) {
		this.request = request;
	}

	public Book getBook() {

		String title = request.getParameter("title");
		String author = request.getParameter("author");
		String publisher = request.getParameter("publisher");
		Date pubdate = Date.valueOf(request.getParameter("pubdate"));
		String price = request.getParameter("price");
		String qty = request.getParameter("qty");

		try {

			Book b = new Book();
			b.setTitle(title);
			b.setAuthor(author);
			b.setPublisher(publisher);
			b.setPubdate(pubdate);
			b.setPrice(Integer.parseInt(price));
			b.setQty(Integer.parseInt(qty));

			return b;

		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}

	public boolean add(Book b) {
		try {
			CartMgr cm = getCartMgr();
			cm.add(b);
		} catch (Exception e) {
			return false;
		}
		return true;
	}

	private CartMgr getCartMgr() {
		CartMgr cart = (CartMgr) request.getSession().getAttribute("cart");
		if (cart == null) {
			cart = new CartMgr();
			request.getSession().setAttribute("cart", cart);
		}
		return cart;
	}

}
