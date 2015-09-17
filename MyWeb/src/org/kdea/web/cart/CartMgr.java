package org.kdea.web.cart;

import java.util.*;

public class CartMgr {

	private List<Book> cart;
	
	public CartMgr(){
		cart = new ArrayList<>();
	}
	
	public List<Book> getCart() {
		return cart;
	}

	public void setCart(List<Book> cart) {
		this.cart = cart;
	}

	public void add(Book b){
		boolean found = false;
		for(int i=0;i<cart.size();i++){
			if(cart.get(i).getTitle().equals(b.getTitle())){
				if(cart.get(i).getPubdate().equals(b.getPubdate())){
					Book book = cart.get(i);
					book.setQty(book.getQty()+b.getQty());
					found=true;
					break;
				}
			}
		}
		if(!found){
		cart.add(b);
		}
	}
	
}
