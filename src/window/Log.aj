package window;

public aspect Log {

		pointcut callChange(): call(* change*(..) ); 
	    after() : callChange() {
			System.out.println("New background color: "+ Window.currentColor);
	    } 
	    
	    pointcut callChange2(Window w): call(* change*(..) )&& this(w); 
	    after(Window w) : callChange2(w) {
	    	if(!Window.currentColor.equals("Palegreen")) {
	    		w.getCuadro().setText(String.valueOf(Integer.parseInt(w.getCuadro().getText())+10));
	    	}			
	    }
	    
	    pointcut callChange3(Window w): call(* change*(..) ) && this(w); 
	    after(Window w) : callChange3(w) {
	    	if(!Window.currentColor.equals("Skyblue")) {
	    		w.getCuadro().setText(String.valueOf(Integer.parseInt(w.getCuadro().getText())+5));	
	    	}
	    }
	    
}
