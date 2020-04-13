package org.soft.recruitment.controller;

import com.github.pagehelper.PageInfo;
import org.soft.recruitment.model.Board;
import org.soft.recruitment.model.Message;
import org.soft.recruitment.service.IBoardService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

@Controller
@Scope("prototype")
@RequestMapping("/board")

public class BoardController {

    @Autowired
    private IBoardService boardService;

    /**
     * 查询所有留言，条件搜索内容
     * @param page
     * @param size
     * @param boardContent
     * @param model
     * @return
     */
    @RequestMapping("Board")
    public String Board(@RequestParam(value = "page", required = true, defaultValue = "1") int page,
                               @RequestParam(value = "size", required = true, defaultValue = "5") int size,
                               String boardContent, Model model) {
        List<Board> boardList = boardService.findAllBoard(page, size, boardContent);
        //分页
        PageInfo<Board> pageInfo = new PageInfo<>(boardList);
        model.addAttribute("pageInfo", pageInfo);
        return "/board/Board";
    }

    /**
     * 新增留言
     * @param board
     * @return
     */
    @RequestMapping("insertBoard")
    @ResponseBody
    public Message insertBoard(Board board) {
        Message msg = new Message();
        boardService.insertBoard(board);//插入具体数据
        msg.setStr("提交成功");
        return msg;
    }

    /**
     * 管理员删除留言
     * @param boardId
     */
    @RequestMapping("deleteBoard")
    public String deleteBoard(Integer boardId){
        boardService.deleteBoard(boardId);
        return "redirect:/board/Board";
    }
}
