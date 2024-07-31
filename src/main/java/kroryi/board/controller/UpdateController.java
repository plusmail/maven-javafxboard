package kroryi.board.controller;

import javafx.event.ActionEvent;
import javafx.fxml.FXML;
import javafx.scene.control.*;
import kroryi.board.dto.Board;
import kroryi.board.service.BoardService;
import kroryi.board.service.BoardServiceImpl;
import kroryi.board.util.SceneUtil;

import java.io.IOException;

public class UpdateController {
    @FXML
    public TextField tfTitle;
    @FXML
    public TextField tfWriter;
    @FXML
    public TextField tfRegDate;
    @FXML
    public TextArea taContent;

    int boardNo;
    private BoardService boardService = new BoardServiceImpl();


    public void read(int boardNo){
        this.boardNo = boardNo;
        Board board = boardService.select(boardNo);
        tfTitle.setText(board.getTitle());
        tfWriter.setText(board.getWriter());
        taContent.setText(board.getContent());
        tfRegDate.setText(board.getRegDate());
    }

    public void moveToUpdate(ActionEvent event) throws IOException {
        Board board = new Board(tfTitle.getText(),taContent.getText(),tfWriter.getText());
        board.setNo(boardNo);
        int result = boardService.update(board);
        if(result > 0) {
            System.out.println("글 수정 완료");
            SceneUtil.getInstance().switchScene(event, UI.LIST.getPath());
        }

    }

    public void moveToPrev(ActionEvent event) {
    }

    public void moveToList(ActionEvent event) throws IOException {
        SceneUtil.getInstance().switchScene(event, UI.LIST.getPath());
    }

    public void moveToDelete(ActionEvent event) throws IOException {
        showAlert(event);
    }

    public void moveToNext(ActionEvent event) {
    }

    private void showAlert(ActionEvent event) throws IOException {
        Alert alert = new Alert(Alert.AlertType.CONFIRMATION);
        alert.setTitle("게시글 삭제");
        alert.setHeaderText("게시글을 정말 삭제 하시나요?(글번호:" + boardNo +")");
        alert.setContentText("삭제 후 되돌릴 수 없습니다.");
        int result =0;
        if(alert.showAndWait().get()  == ButtonType.OK){
            result = boardService.delete(boardNo);
        }
        if(result > 0){
            System.out.println("글삭제 잘됨.");
            SceneUtil.getInstance().switchScene(event, UI.LIST.getPath());
        }
    }

}
