package org.soft.recruitment.service.impl;


import com.github.pagehelper.PageHelper;
import org.soft.recruitment.dao.BoardMapper;
import org.soft.recruitment.model.Board;
import org.soft.recruitment.service.IBoardService;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Service
@Transactional
public class BoardServiceImpl implements IBoardService {

    @Resource
    private BoardMapper boardMapper;

    /**
     * 查询所有留言
     * @param page
     * @param size
     * @param boardContent
     * @return
     */
    public List<Board> findAllBoard(int page, int size, String boardContent) {
        PageHelper.startPage(page, size);
        Map<String, Object> map = new HashMap<>();
        map.put("boardContent", boardContent);

        return boardMapper.findAllBoard(map);
    }

    /**
     * 新增留言
     * @param board
     */
    public void insertBoard(Board board) {
        boardMapper.insert(board);
    }

    /**
     * 删除留言
     * @param boardId
     */
    public void deleteBoard(Integer boardId) {
        boardMapper.deleteByPrimaryKey(boardId);
    }
}