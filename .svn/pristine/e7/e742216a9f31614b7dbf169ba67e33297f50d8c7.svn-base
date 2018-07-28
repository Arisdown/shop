package com.qf.mapper;

import com.qf.domain.CrmStaff;
import com.qf.domain.CrmStaffExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface CrmStaffMapper {
    int countByExample(CrmStaffExample example);

    int deleteByExample(CrmStaffExample example);

    int deleteByPrimaryKey(String staffid);

    int insert(CrmStaff record);

    int insertSelective(CrmStaff record);

    List<CrmStaff> selectByExample(CrmStaffExample example);

    CrmStaff selectByPrimaryKey(String staffid);

    int updateByExampleSelective(@Param("record") CrmStaff record, @Param("example") CrmStaffExample example);

    int updateByExample(@Param("record") CrmStaff record, @Param("example") CrmStaffExample example);

    int updateByPrimaryKeySelective(CrmStaff record);

    int updateByPrimaryKey(CrmStaff record);
    
    CrmStaff queryByNameAndPassword(@Param("name") String name,@Param("password") String password);
    
    int  updatePasById(@Param("password") String password,@Param("newPass") String newPass,@Param("id") String id);
    
    List<CrmStaff> findAll();
    
    int addStaff(CrmStaff record);
    List<CrmStaff> findByCondtions(@Param("staffname") String staffname,@Param("postid") String postid);
}