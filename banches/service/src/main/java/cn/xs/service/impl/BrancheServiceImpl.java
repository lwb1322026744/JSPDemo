package cn.xs.service.impl;

import cn.xs.entity.Branche;
import cn.xs.service.BrancheDao;
import cn.xs.service.BrancheService;

import java.util.List;

public class BrancheServiceImpl implements BrancheService {
    BrancheDao brancheDao=new BrancheDaoImpl();
    @Override
    public List<Branche> getBrancheInfo() {
        return brancheDao.getBranche();
    }
}
