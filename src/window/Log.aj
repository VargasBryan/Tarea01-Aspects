package window;

public aspect Log {
		
		pointcut callChange(): call(* change*(..) ); 
	    after() : callChange() {
			System.out.println("New background color: "+ Window.currentColor);
	    } 
	    
}
