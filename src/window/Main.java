package window;
import javafx.application.Application;
import javafx.stage.Stage;

public class Main extends Application {

	private Window w;

	@Override
	public void start(Stage primaryStage) throws Exception {
		
		w = new Window();
		primaryStage.setScene(w.getScene());
		primaryStage.setTitle("Buttons");
		primaryStage.show();
		
	}
	
	public static void main(String[] args) {
		launch(args);
	}
}
