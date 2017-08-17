package com.ywgroup.iecloud.iecloudwms.service.serviceInterface.basicInformation;

import com.github.pagehelper.PageInfo;
import com.ywgroup.iecloud.iecloudwms.common.ServerResponse;
import com.ywgroup.iecloud.iecloudwms.pojo.Storage;

/**
 * Created by guotao on 2017/8/16.
 * com.ywgroup.iecloud.iecloudwms.service.serviceInterface.basicInformation
 * iecloudwms
 */
public interface IStorageManagementService {
    ServerResponse<String> addStorageItem(Storage storage);
    ServerResponse<String> updateStorageItem(Storage storage);
    ServerResponse<String> deleteStorageItem(Integer storageId);
    ServerResponse<PageInfo> getStorageInfoSelective(Storage storage, int pageNum, int pageSize);
}
