package org.soft.recruitment.service.impl;

import org.apache.commons.lang3.StringUtils;
import org.soft.recruitment.dao.FavoritesMapper;
import org.soft.recruitment.model.Favorites;
import org.soft.recruitment.model.FavoritesExample;
import org.soft.recruitment.model.FavoritesExample.Criteria;
import org.soft.recruitment.service.IFavoritesService;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;
import java.util.List;

@Service
@Transactional
public class FavoritesServiceImpl implements IFavoritesService {

    @Resource
     public FavoritesMapper favoritesMapper;

    /**
     * 根据用户真名查询所有职位
     * @param userRealName
     * @param jobId
     * @return
     */
    public Favorites findAllFavorites(String userRealName, String jobId) {
        FavoritesExample example = new FavoritesExample();
        Criteria criteria = example.createCriteria();
        if(StringUtils.isNotBlank(userRealName)){
            criteria.andUserRealNameEqualTo(userRealName);
        }
        if (StringUtils.isNotBlank(jobId)){
            criteria.andJobAddressEqualTo(jobId);
        }

        List<Favorites> favoritesList = favoritesMapper.selectByExample(example);
        if(favoritesList != null && favoritesList.size() > 0){
            return favoritesList.get(0);
        }
        return null;
    }

    /**
     * 根据用户名查询用户的收藏记录
     * @param userRealName
     * @return
     */
    public List<Favorites> findFavoritesByUserRealName(String userRealName) {
        FavoritesExample example = new FavoritesExample();
        Criteria criteria = example.createCriteria();
        if(StringUtils.isNotBlank(userRealName)){
            criteria.andUserRealNameEqualTo(userRealName);
        }

        List<Favorites> favoritesList_ = favoritesMapper.selectByExample(example);
        if(favoritesList_ != null && favoritesList_.size() > 0){
            return favoritesList_;
        }
        return null;
    }

    /**
     * 新增收藏记录
     * @param favorites
     * @return
     */
    public int insertFavorites(Favorites favorites) {
        int results = favoritesMapper.insert(favorites);
        return results;
    }

    /**
     * 删除收藏记录
     * @param favoriteId
     */
    public void deleteFavorites(Integer favoriteId) {
        FavoritesExample example = new FavoritesExample();
        Criteria criteria = example.createCriteria();
        criteria.andFavoriteIdEqualTo(favoriteId);
        favoritesMapper.deleteByExample(example);

    }
}
