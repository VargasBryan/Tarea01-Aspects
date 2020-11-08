package window;

import java.io.BufferedWriter;
import java.io.File;
import java.io.FileWriter;
import java.io.IOException;

import org.aspectj.lang.reflect.Pointcut;

import javafx.scene.control.Label;
import javafx.scene.image.Image;
import javafx.scene.image.ImageView;
import javafx.scene.layout.HBox;

public aspect Log {
		File file = new File("log.txt");

		pointcut callChange(): call(* change*(..) ); 
	    after() : callChange() {
			System.out.println("New background color: "+ Window.currentColor);
	    } 
	    
	    pointcut callChange2(Window w): call(* change*(..) )&& this(w); 
	    after(Window w) : callChange2(w) {
	    	if(!Window.currentColor.equals("Palegreen")) {
	    		w.getCuadro().getChildren().add(new Label("Cambio realizado"));
	    	}			
	    }
	    
	    pointcut callChange3(Window w): call(* change*(..) ) && this(w); 
	    after(Window w) : callChange3(w) {
	    	if(!Window.currentColor.equals("Skyblue")) {
	    		w.getCuadro().getChildren().add(new Label("Cambio Guardado"));   		
	    			try {
						BufferedWriter bw = new BufferedWriter(new FileWriter(file,true));
						bw.write(w.currentColor + "\n");
			    		bw.close();
					} catch (Exception e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
					}	
	    	}
	    }
	    
}
