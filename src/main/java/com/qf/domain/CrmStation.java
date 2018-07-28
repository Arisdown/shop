package com.qf.domain;

import java.util.Date;

public class CrmStation {
    private String stationid;

    private String studentid;

    private String flag;

    private String staff;

    private Date createdate;

    private String beforeclassid;

    private String afterclassid;

    public String getStationid() {
        return stationid;
    }

    public void setStationid(String stationid) {
        this.stationid = stationid == null ? null : stationid.trim();
    }

    public String getStudentid() {
        return studentid;
    }

    public void setStudentid(String studentid) {
        this.studentid = studentid == null ? null : studentid.trim();
    }

    public String getFlag() {
        return flag;
    }

    public void setFlag(String flag) {
        this.flag = flag == null ? null : flag.trim();
    }

    public String getStaff() {
        return staff;
    }

    public void setStaff(String staff) {
        this.staff = staff == null ? null : staff.trim();
    }

    public Date getCreatedate() {
        return createdate;
    }

    public void setCreatedate(Date createdate) {
        this.createdate = createdate;
    }

    public String getBeforeclassid() {
        return beforeclassid;
    }

    public void setBeforeclassid(String beforeclassid) {
        this.beforeclassid = beforeclassid == null ? null : beforeclassid.trim();
    }

    public String getAfterclassid() {
        return afterclassid;
    }

    public void setAfterclassid(String afterclassid) {
        this.afterclassid = afterclassid == null ? null : afterclassid.trim();
    }

	private  CrmStudent student;

	public CrmStudent getStudent() {
		return student;
	}

	public void setStudent(CrmStudent student) {
		this.student = student;
	}
	private String beforeinfo;
    private String afterInfo;

    public String getBeforeinfo() {
		return beforeinfo;
	}

	public void setBeforeinfo(String beforeinfo) {
		this.beforeinfo = beforeinfo;
	}

	public String getAfterInfo() {
		return afterInfo;
	}

	public void setAfterInfo(String afterInfo) {
		this.afterInfo = afterInfo;
	}

}