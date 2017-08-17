package com.ywgroup.iecloud.iecloudwms.service.impl.basicInformation;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.ywgroup.iecloud.iecloudwms.common.ServerResponse;
import com.ywgroup.iecloud.iecloudwms.dao.StorageMapper;
import com.ywgroup.iecloud.iecloudwms.pojo.Storage;
import com.ywgroup.iecloud.iecloudwms.service.serviceInterface.basicInformation.IStorageManagementService;
import org.apache.commons.collections.CollectionUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by guotao on 2017/8/16.
 * com.ywgroup.iecloud.iecloudwms.service.impl.basicInformation
 * iecloudwms
 */
@Service("iStorageManagementService")
public class StorageManagementServiceImpl implements IStorageManagementService {

    @Autowired
    private StorageMapper storageMapper;

    private Logger logger = LoggerFactory.getLogger(StorageManagementServiceImpl.class);

    @Override
    public ServerResponse<String> addStorageItem(Storage storage) {

        int resultCount = storageMapper.checkId(storage.getId());
        if (resultCount > 0) {
            return ServerResponse.createByErrorMessage("ID已存在");
        }

        if (storageMapper.insertSelective(storage) == 0) {
            return ServerResponse.createByErrorMessage("增加仓库信息失败");
        } else {
            return ServerResponse.createBySuccessMessage("增加仓库信息成功");
        }
    }

    @Override
    public ServerResponse<String> updateStorageItem(Storage storage) {

        if (storageMapper.updateByPrimaryKeySelective(storage) > 0) {
            return ServerResponse.createBySuccessMessage("更新仓库信息成功");
        } else {
            return ServerResponse.createByErrorMessage("更新仓库信息失败");
        }
    }

    @Override
    public ServerResponse<String> deleteStorageItem(Integer storageId) {
        if (storageMapper.deleteByPrimaryKey(storageId) > 0) {
            return ServerResponse.createBySuccessMessage("删除仓库信息成功");
        } else {
            return ServerResponse.createByErrorMessage("删除仓库信息失败");
        }
    }

    @Override
    public ServerResponse<PageInfo> getStorageInfoSelective(Storage storage, int pageNum, int pageSize) {
        PageHelper.startPage(pageNum, pageSize);
        List<Storage> storageList = storageMapper.selectAll();
        if(CollectionUtils.isEmpty(storageList)) {
            logger.info("未找到资产信息");
        }
        PageInfo pageResult =new PageInfo(storageList);
        pageResult.setList(storageList);
        return ServerResponse.createBySuccess(pageResult);
    }
}
