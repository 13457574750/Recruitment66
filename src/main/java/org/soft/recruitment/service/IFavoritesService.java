package org.soft.recruitment.service;

import org.soft.recruitment.model.Favorites;

import java.util.List;


public interface IFavoritesService {

    //根据用户真名查询所有职位
    Favorites findAllFavorites(String userRealName, String jobId);

    //根据用户真名查询所有收藏记录(收藏夹)
    List<Favorites> findFavoritesByUserRealName(int page, int size, String userRealName);

    //增加收藏记录
    int insertFavorites(Favorites favorites_);

    //删除申请记录
    void deleteFavorites(Integer favoriteId);
}

