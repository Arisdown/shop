package com.qf.domain;

import java.io.Serializable;

import com.alibaba.fastjson.JSON;

public class CrmPost implements Serializable{
    
	private static final long serialVersionUID = 1L;

	private String postid;

    private String postname;

    private String depid;

    public String getPostid() {
        return postid;
    }
    
    public CrmDepartment department;
    

    public CrmDepartment getDepartment() {
		return department;
	}

	public void setDepartment(CrmDepartment department) {
		this.department = department;
	}

	public void setPostid(String postid) {
        this.postid = postid == null ? null : postid.trim();
    }

    public String getPostname() {
        return postname;
    }

    public void setPostname(String postname) {
        this.postname = postname == null ? null : postname.trim();
    }

    public String getDepid() {
        return depid;
    }

    public void setDepid(String depid) {
        this.depid = depid == null ? null : depid.trim();
    }

	@Override
	public String toString() {
		return JSON.toJSONString(this);
	}
    
}