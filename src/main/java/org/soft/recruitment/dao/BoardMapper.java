package org.soft.recruitment.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;
import org.soft.recruitment.model.Board;
import org.soft.recruitment.model.BoardExample;

public interface BoardMapper {
    int countByExample(BoardExample example);

    int deleteByExample(BoardExample example);

    int deleteByPrimaryKey(Integer boardId);

    int insert(Board record);

    int insertSelective(Board record);

    List<Board> selectByExample(BoardExample example);

    Board selectByPrimaryKey(Integer boardId);

    int updateByExampleSelective(@Param("record") Board record, @Param("example") BoardExample example);

    int updateByExample(@Param("record") Board record, @Param("example") BoardExample example);

    int updateByPrimaryKeySelective(Board record);

    int updateByPrimaryKey(Board record);

    // 查询所有留言，条件查询留言内容
    List<Board> findAllBoard(Map<String,Object> map);
}