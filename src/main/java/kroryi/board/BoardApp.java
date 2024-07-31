package kroryi.board;

import kroryi.board.dto.Board;
import kroryi.board.service.BoardService;
import kroryi.board.service.BoardServiceImpl;

public class BoardApp {
    static BoardService boardService = new BoardServiceImpl();

    public static void main(String[] args){
        //목록보기
        for(Board board: boardService.list()){
            System.out.println(board.getNo()+" " + board.getTitle() + " " + board.getWriter() + " " + board.getRegDate());
        }
        //게시글 등록
        Board board = new Board();
        board.setTitle("신로운 세상!!!");
        board.setWriter("홍길동");
        board.setContent("날씨가 무지무지 덥레용.");
        boardService.insert(board);

        Board boardSelect = boardService.select(12);
        System.out.println("게시판 상세보기");
        System.out.print("글번호 :");
        System.out.println(boardSelect.getNo());
        System.out.print("글제목 : ");
        System.out.println(boardSelect.getTitle());
        System.out.print("글 작성자 :");
        System.out.println(boardSelect.getWriter());
        System.out.print("작성일자 :");
        System.out.println(boardSelect.getRegDate());
        System.out.print("글 내용 :");
        System.out.println(boardSelect.getContent());

        System.out.println("게시판 수정하기");
        boardSelect.setWriter("홍길동");
        boardSelect.setTitle("답 다 가르춰 주네..");
        boardService.update(boardSelect);
        Board boardSelect2 = boardService.select(12);
        System.out.print("글번호 :");
        System.out.println(boardSelect2.getNo());
        System.out.print("글제목 : ");
        System.out.println(boardSelect2.getTitle());
        System.out.print("글 작성자 :");
        System.out.println(boardSelect2.getWriter());
        System.out.print("작성일자 :");
        System.out.println(boardSelect2.getRegDate());
        System.out.print("글 내용 :");
        System.out.println(boardSelect2.getContent());









    }
}
