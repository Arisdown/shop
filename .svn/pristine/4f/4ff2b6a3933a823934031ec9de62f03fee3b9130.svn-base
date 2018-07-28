package com.qf.mapper;

import com.qf.domain.CrmStation;
import com.qf.domain.CrmStationExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface CrmStationMapper {
    int countByExample(CrmStationExample example);

    int deleteByExample(CrmStationExample example);

    int deleteByPrimaryKey(String stationid);

    int insert(CrmStation record);

    int insertSelective(CrmStation record);

    List<CrmStation> selectByExample(CrmStationExample example);

    CrmStation selectByPrimaryKey(String stationid);

    int updateByExampleSelective(@Param("record") CrmStation record, @Param("example") CrmStationExample example);

    int updateByExample(@Param("record") CrmStation record, @Param("example") CrmStationExample example);

    int updateByPrimaryKeySelective(CrmStation record);

    int updateByPrimaryKey(CrmStation record);
}