/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Beans;
import java.util.Enumeration;
import java.util.Hashtable;
import java.lang.String;
import java.lang.Integer;
import java.lang.Float;


/**
 *
 * @author User
 */
public class ShoppingCart {
         protected Hashtable items=new Hashtable();
    public void addItem(String itemId, String desc, int price, int quantity)
    {
        String[] item = {itemId, desc, Integer.toString(price), Integer.toString(quantity)};   
        if(items.containsKey(itemId))
        {
            String[] tmpItem = (String[])items.get(itemId);
            int tmpQuart = Integer.parseInt(tmpItem[3]);
            
            quantity +=tmpQuart;
            tmpItem[3] = Integer.toString(quantity);
            
        }else{
            items.put(itemId, item);
            
        }
    }
    
    
    public void kurangItem(String itemId, String desc, int price, int quantity)
    {
        String[] item = {itemId, desc, Integer.toString(price), Integer.toString(quantity)};   
        if(items.containsKey(itemId))
        {
            String[] tmpItem = (String[])items.get(itemId);
            int tmpQuart = Integer.parseInt(tmpItem[3]);
            quantity = tmpQuart;
            quantity  = quantity - 1;
            if (quantity == -1){
                quantity =0;
            }
            tmpItem[3] = Integer.toString(quantity);
            
        }else{
//            items.put(itemId, item);
            
        }
    }
    
    
    
    
    
    public void removeItem(String itemId) 
    {
        if(items.containsKey(itemId)) {
            items.remove(itemId);
        }
    }


    public void updateQuantity(String itemId, int quantity) 
    {
        if(items.containsKey(itemId)) {
            String[] tmpItem=(String[])items.get(itemId);
            tmpItem[3]=Integer.toString(quantity);
        }
   }
 
    public Enumeration getEnumeration()
    {
        return items.elements();
   }
   
   public int getTotalbayar()
    {
        Enumeration e = items.elements();
        String[] tmpItem;
        int NumOfItems=0;
        while(e.hasMoreElements())
        {
            tmpItem=(String[])e.nextElement();
            NumOfItems += (Integer.parseInt(tmpItem[3])*Integer.parseInt(tmpItem[2]));
        }
        return NumOfItems;
    }   
   
   
   
    public int getNumOfItems()
    {
        Enumeration e = items.elements();
        String[] tmpItem;
        int NumOfItems=0;
        while(e.hasMoreElements())
        {
            tmpItem=(String[])e.nextElement();
            NumOfItems += (Integer.parseInt(tmpItem[3]));
        }
        return NumOfItems;
    }   
    
}
