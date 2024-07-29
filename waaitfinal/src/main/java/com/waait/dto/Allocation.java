package com.waait.dto;

import java.sql.Date;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class Allocation {
	private int projectNo;
	private String empName;
	private int empNo;
	private String allocationFun; //기능이름
	private Date functionStartDate; // 시작날짜
	private Date functionEndDate; // 종료된날짜	
}