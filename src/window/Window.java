package window;

import javafx.geometry.Pos;
import javafx.scene.Scene;
import javafx.scene.control.Button;
import javafx.scene.control.Label;
import javafx.scene.layout.HBox;
import javafx.scene.layout.VBox;
import javafx.scene.paint.Color;
import javafx.scene.text.Font;
import javafx.scene.text.FontPosture;

public class Window {

    private Scene scene;
    private VBox root;
    private VBox cuadro;
    final String[] COLORS = {"Skyblue", "Yellow", "Palegreen"};
    static String currentColor;

    public Window() {
        root = createRoot();
        scene = createScene();
    }

    private VBox createRoot() {
        Label title = new Label("Buttons");
        title.setFont(Font.font("Californian FB", FontPosture.ITALIC, 25));
        title.setTextFill(Color.PURPLE);
        HBox buttons = createButtons();
        cuadro = new VBox();
        cuadro.setAlignment(Pos.CENTER);
        VBox vb = new VBox(title, buttons, cuadro);
        vb.setSpacing(30);
        vb.setAlignment(Pos.CENTER);
        return vb;
    }

    private HBox createButtons() {
        HBox hb = new HBox();
        for (int i = 0; i < COLORS.length; i++) {
            Button b = new Button(COLORS[i]);
            hb.getChildren().addAll(b);
            b.setOnAction(e -> {
                currentColor = b.getText();
                changeColor();
            });
        }
        hb.setSpacing(10);
        hb.setAlignment(Pos.CENTER);
        return hb;
    }

    private void changeColor() {
        root.setStyle("-fx-background-color: " + currentColor + ";");
    }

    private Scene createScene() {
        Scene sc = new Scene(root, 300, 200);
        return sc;
    }

    public Scene getScene() {
        return this.scene;
    }

    public VBox getRoot() {
        return root;
    }

    public VBox getCuadro() {
        return cuadro;
    }

}
