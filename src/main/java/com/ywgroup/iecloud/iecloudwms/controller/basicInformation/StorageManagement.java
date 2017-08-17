package com.ywgroup.iecloud.iecloudwms.controller.basicInformation;

import com.github.pagehelper.PageInfo;
import com.ywgroup.iecloud.iecloudwms.common.ServerResponse;
import com.ywgroup.iecloud.iecloudwms.pojo.Storage;
import com.ywgroup.iecloud.iecloudwms.service.serviceInterface.basicInformation.IStorageManagementService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

/**
 * Created by guotao on 2017/8/16.
 * com.ywgroup.iecloud.iecloudwms.controller.basicInformation
 * iecloudwms
 */
@Controller
@RequestMapping(value = "/basicInformation/")
public class StorageManagement {

    @Autowired
    IStorageManagementService iStorageManagementService;

    @RequestMapping(value = "test.do", method = RequestMethod.GET)
    @ResponseBody
    public ServerResponse<String> test(){
        return ServerResponse.createBySuccessMessage("hello~~");
    }

    @RequestMapping(value = "getAssetSelect.do")
    @ResponseBody
    public ServerResponse<PageInfo> getAssetSelect(Storage storage,
                                                   @RequestParam(value = "pageNum", defaultValue = "1") int pageNum,
                                                   @RequestParam(value = "pageSize", defaultValue = "10") int pageSize) {
        return iStorageManagementService.getStorageInfoSelective(storage, pageNum, pageSize);
    }


}
