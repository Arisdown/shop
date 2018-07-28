package com.qf.mapper;

import com.qf.domain.CrmPost;
import com.qf.domain.CrmPostExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface CrmPostMapper {
    int countByExample(CrmPostExample example);

    int deleteByExample(CrmPostExample example);

    int deleteByPrimaryKey(String postid);

    int insert(CrmPost record);

    int insertSelective(CrmPost record);

    List<CrmPost> selectByExample(CrmPostExample example);

    CrmPost selectByPrimaryKey(String postid);

    int updateByExampleSelective(@Param("record") CrmPost record, @Param("example") CrmPostExample example);

    int updateByExample(@Param("record") CrmPost record, @Param("example") CrmPostExample example);

    int updateByPrimaryKeySelective(CrmPost record);

    int updateByPrimaryKey(CrmPost record);
   
    int addPost(@Param("depid") String depid,@Param("postname") String postname);
   
    List<CrmPost> findAll();
    
    List<CrmPost>findByPostId(@Param("postid") String postid);
    
    List<CrmPost> findByDeptId(@Param("depid") String depid);
}