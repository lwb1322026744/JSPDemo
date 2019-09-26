package cn.xs.service.impl;

import cn.xs.entity.Branche;
import cn.xs.service.BrancheDao;
import cn.xs.uitls.BaseDao;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class BrancheDaoImpl extends BaseDao implements BrancheDao {
    @Override
    public List<Branche> getBranche() {

        String sql = "SELECT `id`,`businessNo`,`name`,`cityArea`,`address`,`telephone`,`summary` FROM `branches`";
        List<Branche> branches = new ArrayList<>();
        rs = this.executeQuery(sql);
        try {

            if (null != rs){
                while (rs.next()){
                    Branche  branche = new Branche();
                    branche.setId(rs.getInt("id"));
                    branche.setName(rs.getString("name"));
                    branche.setCityArea(rs.getString("cityArea"));
                    branche.setAddress(rs.getString("address"));
                    branche.setTelephone(rs.getString("telephone"));
                    branches.add(branche);
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return branches;
    }
}
