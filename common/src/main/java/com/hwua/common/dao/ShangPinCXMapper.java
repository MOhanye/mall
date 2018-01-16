package com.hwua.common.dao;

import java.util.List;
import java.util.Map;

public interface ShangPinCXMapper {
    /**
     * 查询分类
     * @return
     */
    public List<Map<String,Object>> queryFenL();

    /**
     * 根据分类id查询品牌列表
     * @param fid
     * @return
     */
    public List<Map<String,Object>> queryPinPai(Integer fid);
}
