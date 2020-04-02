package org.soft.recruitment.controller;

import org.soft.recruitment.model.Favorites;
import org.soft.recruitment.model.Message;
import org.soft.recruitment.service.IFavoritesService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import java.util.List;

@Controller
@RequestMapping("/favorites")
public class FavoritesController {

    @Resource
    public IFavoritesService favoritesService;

    /**
     * 查询当前用户的全部收藏记录
     *
     * @param userRealName
     * @param model
     * @return
     */
    @RequestMapping("userShowFavorites")
    public String userShowFavorites(String userRealName, Model model) {
        List<Favorites> favoritesList_ = favoritesService.findFavoritesByUserRealName(userRealName);
        model.addAttribute("favoritesList_", favoritesList_);
        return "/favorites/userShowFavorites";
    }

    /*增加收藏*/
    @RequestMapping("/addFavorites")
    @ResponseBody
    public Message addFavorites(String favoriteReleaseTime, String companyName, String companyCreateTime, String userRealName,
                                Integer jobId, String jobName, String jobAddress, String jobSalary, String jobEr, String jobEducation,
                                String jobReleaseTime, String jobType) {
        Message message = new Message();
        Favorites favorites = favoritesService.findAllFavorites(userRealName, String.valueOf(jobId));
        if (userRealName == null || userRealName.isEmpty()) {
            message.setStr("请先登录!");
            return message;
        }
        if (favorites == null) {
            //插入职位具体数据
            Favorites favorites_ = new Favorites();
            favorites_.setFavoriteReleaseTime(favoriteReleaseTime);
            favorites_.setJobId(String.valueOf(jobId));
            favorites_.setJobName(jobName);
            favorites_.setJobAddress(jobAddress);
            favorites_.setJobSalary(jobSalary);
            favorites_.setJobEr(jobEr);
            favorites_.setJobEducation(jobEducation);
            favorites_.setJobReleaseTime(jobReleaseTime);
            favorites_.setJobType(jobType);
            favorites_.setCompanyName(companyName);
            favorites_.setCompanyCreateTime(companyCreateTime);
            favorites_.setUserRealName(userRealName);

            int results = favoritesService.insertFavorites(favorites_);
            if (results == 1) {
                message.setStr("收藏成功!");
                return message;
            } else {
                message.setStr("收藏失败!");
                return message;
            }
        } else {
            message.setStr("请不要重复收藏!");
            return message;
        }
    }

    /**
     * 删除收藏记录
     *
     * @param favoriteId
     */
    @RequestMapping("deleteFavorites")
    public String deleteFavorites(Integer favoriteId) {
        favoritesService.deleteFavorites(favoriteId);
        return "redirect:/favorites/userShowFavorites";
    }
}
