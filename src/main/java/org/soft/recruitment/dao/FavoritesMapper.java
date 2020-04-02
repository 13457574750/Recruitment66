package org.soft.recruitment.dao;

import java.util.List;
import org.apache.ibatis.annotations.Param;
import org.soft.recruitment.model.Favorites;
import org.soft.recruitment.model.FavoritesExample;

public interface FavoritesMapper {
    int countByExample(FavoritesExample example);

    int deleteByExample(FavoritesExample example);

    int deleteByPrimaryKey(Integer favoriteId);

    int insert(Favorites record);

    int insertSelective(Favorites record);

    List<Favorites> selectByExample(FavoritesExample example);

    Favorites selectByPrimaryKey(Integer favoriteId);

    int updateByExampleSelective(@Param("record") Favorites record, @Param("example") FavoritesExample example);

    int updateByExample(@Param("record") Favorites record, @Param("example") FavoritesExample example);

    int updateByPrimaryKeySelective(Favorites record);

    int updateByPrimaryKey(Favorites record);
}