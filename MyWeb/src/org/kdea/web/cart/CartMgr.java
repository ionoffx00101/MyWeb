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
	public int getTotal(){
		int total=0;
		
		for(int i=0;i<cart.size();i++){
			total+=cart.get(i).getPrice() * cart.get(i).getQty();
		}
		return total;
	}
	public boolean updatedItem(int idx,int qty){
		try{
			Book b = cart.get(idx);
			b.setQty(qty);
		}
		catch(Exception e){
			return false;
		}
		return true;
	}
	public boolean removeItem(int idx){
		try{
			cart.remove(idx);
		}
		catch(Exception e){
			return false;
		}
		return true;
	}
	public boolean cleanItem(){
		try{
			cart.removeAll(cart);
		}
		catch(Exception e){
			return false;
		}
		return true;
	}
}
