package com.qf.domain;

import java.io.Serializable;
import java.util.Date;

import com.alibaba.fastjson.JSON;

public class CrmGraduate implements Serializable{
    private String graduateid;

    private String studentid;

    private String companyname;

    private Float salary;

    private String post;

    private Date entrytime;

    private String remark;

    private String classid;
    
    private CrmStudent student;
    

    public CrmStudent getStudent() {
		return student;
	}

	public void setStudent(CrmStudent student) {
		this.student = student;
	}

	public String getGraduateid() {
        return graduateid;
    }

    public void setGraduateid(String graduateid) {
        this.graduateid = graduateid == null ? null : graduateid.trim();
    }

    public String getStudentid() {
        return studentid;
    }

    public void setStudentid(String studentid) {
        this.studentid = studentid == null ? null : studentid.trim();
    }

    public String getCompanyname() {
        return companyname;
    }

    public void setCompanyname(String companyname) {
        this.companyname = companyname == null ? null : companyname.trim();
    }

    public Float getSalary() {
        return salary;
    }

    public void setSalary(Float salary) {
        this.salary = salary;
    }

    public String getPost() {
        return post;
    }

    public void setPost(String post) {
        this.post = post == null ? null : post.trim();
    }

    public Date getEntrytime() {
        return entrytime;
    }

    public void setEntrytime(Date entrytime) {
        this.entrytime = entrytime;
    }

    public String getRemark() {
        return remark;
    }

    public void setRemark(String remark) {
        this.remark = remark == null ? null : remark.trim();
    }

    public String getClassid() {
        return classid;
    }

    public void setClassid(String classid) {
        this.classid = classid == null ? null : classid.trim();
    }

	@Override
	public String toString() {
		return JSON.toJSONString(this);
	}
    
    
}