package com.qf.mapper;

import com.qf.domain.CrmDepartment;
import com.qf.domain.CrmDepartmentExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface CrmDepartmentMapper {
    int countByExample(CrmDepartmentExample example);

    int deleteByExample(CrmDepartmentExample example);

    int deleteByPrimaryKey(String depid);

    int insert(@Param("name")String deptname);

    int insertSelective(CrmDepartment record);

    List<CrmDepartment> selectByExample(CrmDepartmentExample example);

    CrmDepartment selectByPrimaryKey(String depid);

    int updateByExampleSelective(@Param("record") CrmDepartment record, @Param("example") CrmDepartmentExample example);

    int updateByExample(@Param("record") CrmDepartment record, @Param("example") CrmDepartmentExample example);

    int updateByPrimaryKeySelective(CrmDepartment record);

    int updateByPrimaryKey(CrmDepartment record);
    
     List<CrmDepartment> findAll();
   
    
    int getTotal();
    
    
}