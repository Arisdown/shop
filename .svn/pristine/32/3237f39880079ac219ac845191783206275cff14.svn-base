package com.qf.mapper;

import com.qf.domain.CrmGraduate;
import com.qf.domain.CrmGraduateExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface CrmGraduateMapper {
    int countByExample(CrmGraduateExample example);

    int deleteByExample(CrmGraduateExample example);

    int deleteByPrimaryKey(String graduateid);

    int insert(CrmGraduate record);

    int insertSelective(CrmGraduate record);

    List<CrmGraduate> selectByExample(CrmGraduateExample example);

    CrmGraduate selectByPrimaryKey(String graduateid);

    int updateByExampleSelective(@Param("record") CrmGraduate record, @Param("example") CrmGraduateExample example);

    int updateByExample(@Param("record") CrmGraduate record, @Param("example") CrmGraduateExample example);

    int updateByPrimaryKeySelective(CrmGraduate record);

    int updateByPrimaryKey(CrmGraduate record);
    
    List<CrmGraduate> findAll();
    
    
}