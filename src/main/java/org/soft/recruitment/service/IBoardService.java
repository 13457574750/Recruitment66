package org.soft.recruitment.service;


import org.soft.recruitment.model.Board;

import java.util.List;

//用户下所拥有的接口
public interface IBoardService {

    // 查询所有留言，条件查询留言内容
    List<Board> findAllBoard(int page, int size, String boardContent);

    //  新增留言
    void insertBoard(Board board);

    //  根据ID删除留言
    void deleteBoard(Integer boardId);

}
