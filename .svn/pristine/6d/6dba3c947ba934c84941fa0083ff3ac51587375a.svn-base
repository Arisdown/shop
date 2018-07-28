package com.qf.mapper;

import com.qf.domain.CrmStudent;
import com.qf.domain.CrmStudentExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface CrmStudentMapper {
    int countByExample(CrmStudentExample example);

    int deleteByExample(CrmStudentExample example);

    int deleteByPrimaryKey(String studentid);

    int insert(CrmStudent record);

    int insertSelective(CrmStudent record);

    List<CrmStudent> selectByExample(CrmStudentExample example);

    CrmStudent selectByPrimaryKey(String studentid);

    int updateByExampleSelective(@Param("record") CrmStudent record, @Param("example") CrmStudentExample example);

    int updateByExample(@Param("record") CrmStudent record, @Param("example") CrmStudentExample example);

    int updateByPrimaryKeySelective(CrmStudent record);

    int updateByPrimaryKey(CrmStudent record);
    List<CrmStudent> findStuByPage(@Param("currentPage") int currentPage,@Param("pageSize") int pageSize);

}