package com.qf.mapper;

import com.qf.domain.CrmRefer;
import com.qf.domain.CrmReferExample;

import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface CrmReferMapper {
    int countByExample(CrmReferExample example);

    int deleteByExample(CrmReferExample example);

    int deleteByPrimaryKey(String referid);

    int insert(CrmRefer record);

    int insertSelective(CrmRefer record);

    List<CrmRefer> selectByExample(CrmReferExample example);

    CrmRefer selectByPrimaryKey(String referid);

    int updateByExampleSelective(@Param("record") CrmRefer record, @Param("example") CrmReferExample example);

    int updateByExample(@Param("record") CrmRefer record, @Param("example") CrmReferExample example);

    int updateByPrimaryKeySelective(CrmRefer record);

    int updateByPrimaryKey(CrmRefer record);
    
    List<CrmRefer> findStuByPage(@Param("currentPage") int currentPage,@Param("pageSize") int pageSize);
    
    public List<CrmRefer> findByNameOrQQOrtelephone(@Param("query") String query);
}