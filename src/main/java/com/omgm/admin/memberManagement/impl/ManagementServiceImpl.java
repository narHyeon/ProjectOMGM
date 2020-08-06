package com.omgm.admin.memberManagement.impl;

import com.omgm.admin.memberManagement.beans.ManagementDAO;
import com.omgm.admin.memberManagement.beans.ManagementVO;
import com.omgm.admin.memberManagement.service.ManagementService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service("managementService")
public class ManagementServiceImpl implements ManagementService {

    @Resource(name="managementDAO")
    private ManagementDAO managementDAO;

    @Override
    public List<ManagementVO> memberTable(ManagementVO vo) {
        return managementDAO.memberTable(vo);
    }
}
