package kroryi.board;

import javafx.application.Application;
import javafx.fxml.FXMLLoader;
import javafx.scene.Scene;
import javafx.stage.Stage;

import java.io.IOException;

public class Main extends Application {
//    private static final String STYLESHEET_PATH = "style.css";

    @Override
    public void start(Stage stage) throws IOException {
        FXMLLoader fxmlLoader = new FXMLLoader(Main.class.getResource("LOGIN.fxml"));
        Scene scene = new Scene(fxmlLoader.load(), 880, 600);
//        scene.getStylesheets().add(getClass().getResource(STYLESHEET_PATH).toExternalForm());
        stage.setTitle("JavaFX Board!");
        stage.setResizable(false);
        stage.setScene(scene);
        stage.show();

//        stage.setOnCloseRequest(event->{
//            event.consume();
//
//        });
    }

    public static void main(String[] args) {
        launch();
    }
}