package org.soft.recruitment.model;

public class Board {
    private Integer boardId;

    private String boardName;

    private String boardEmail;

    private String boardContent;

    private String boardTime;

    public Integer getBoardId() {
        return boardId;
    }

    public void setBoardId(Integer boardId) {
        this.boardId = boardId;
    }

    public String getBoardName() {
        return boardName;
    }

    public void setBoardName(String boardName) {
        this.boardName = boardName == null ? null : boardName.trim();
    }

    public String getBoardEmail() {
        return boardEmail;
    }

    public void setBoardEmail(String boardEmail) {
        this.boardEmail = boardEmail == null ? null : boardEmail.trim();
    }

    public String getBoardContent() {
        return boardContent;
    }

    public void setBoardContent(String boardContent) {
        this.boardContent = boardContent == null ? null : boardContent.trim();
    }

    public String getBoardTime() {
        return boardTime;
    }

    public void setBoardTime(String boardTime) {
        this.boardTime = boardTime == null ? null : boardTime.trim();
    }
}