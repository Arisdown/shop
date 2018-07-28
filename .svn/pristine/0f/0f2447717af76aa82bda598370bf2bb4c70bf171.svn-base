package com.qf.mapper;

import com.qf.controller.po.QueryConditions;
import com.qf.domain.CrmCourseType;
import com.qf.domain.CrmCourseTypeExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface CrmCourseTypeMapper {
    int countByExample(CrmCourseTypeExample example);

    int deleteByExample(CrmCourseTypeExample example);

    int deleteByPrimaryKey(String coursetypeid);

    int insert(CrmCourseType record);

    int insertSelective(CrmCourseType record);

    List<CrmCourseType> selectByExample(CrmCourseTypeExample example);

    CrmCourseType selectByPrimaryKey(String coursetypeid);

    int updateByExampleSelective(@Param("record") CrmCourseType record, @Param("example") CrmCourseTypeExample example);

    int updateByExample(@Param("record") CrmCourseType record, @Param("example") CrmCourseTypeExample example);

    int updateByPrimaryKeySelective(CrmCourseType record);

    int updateByPrimaryKey(CrmCourseType record);
    
    public List<CrmCourseType> findAll();
    
    List<CrmCourseType> findByCondition(@Param("record")QueryConditions conditions);
}