package com.klu.entity;

import java.sql.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "bills")
public class bills {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private long id;
	@Column(nullable = false)
	private long servicenumber;
	@Column(nullable = false)
	private String name;
	@Column(nullable = false,length = 10)
	private Long phno;
	@Column(nullable = false)
	private String sectionoffice;
	@Column(nullable = false)
	private String address;
	@Column(nullable = false)
	private String ero;
	@Column(nullable = false)
	private String caterogy;
	@Column(nullable = false)
	private Long paymentno;
	@Column(nullable = false)
	private Date billdate;
	@Column(nullable = false)
	private Date duedate;
	@Column(nullable = false)
	private double units;
	@Column(nullable = false)
	private double cost;
	
	
	private int fixedcharges;
	private int customercharges;
	private double electricityduty;
	private double interestoned;
	private double  surcharge;
	private double gridcharges;
	private double othercharges;
	private double adjustment;
	private double True_up;
	@Column(nullable = false)
	private double BILL_AMT;
	private boolean status;
	
	public double getCost() {
		return cost;
	}
	public void setCost(double cost) {
		this.cost = cost;
	}
	public long getId() {
		return id;
	}
	public void setId(long id) {
		this.id = id;
	}
	public long getServicenumber() {
		return servicenumber;
	}
	public void setServicenumber(long servicenumber) {
		this.servicenumber = servicenumber;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public Long getPhno() {
		return phno;
	}
	public void setPhno(Long phno) {
		this.phno = phno;
	}
	public String getSectionoffice() {
		return sectionoffice;
	}
	public void setSectionoffice(String sectionoffice) {
		this.sectionoffice = sectionoffice;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getEro() {
		return ero;
	}
	public void setEro(String ero) {
		this.ero = ero;
	}
	public String getCaterogy() {
		return caterogy;
	}
	public void setCaterogy(String caterogy) {
		this.caterogy = caterogy;
	}
	public Long getPaymentno() {
		return paymentno;
	}
	public void setPaymentno(Long paymentno) {
		this.paymentno = paymentno;
	}
	public Date getBilldate() {
		return billdate;
	}
	public void setBilldate(Date billdate) {
		this.billdate = billdate;
	}
	public Date getDuedate() {
		return duedate;
	}
	public void setDuedate(Date duedate) {
		this.duedate = duedate;
	}
	public double getUnits() {
		return units;
	}
	public void setUnits(double units) {
		this.units = units;
	}
	
	
	public int getFixedcharges() {
		return fixedcharges;
	}
	public void setFixedcharges(int fixedcharges) {
		this.fixedcharges = fixedcharges;
	}
	public int getCustomercharges() {
		return customercharges;
	}
	public void setCustomercharges(int customercharges) {
		this.customercharges = customercharges;
	}
	public double getElectricityduty() {
		return electricityduty;
	}
	public void setElectricityduty(double electricityduty) {
		this.electricityduty = electricityduty;
	}
	public double getInterestoned() {
		return interestoned;
	}
	public void setInterestoned(double interestoned) {
		this.interestoned = interestoned;
	}
	public double getSurcharge() {
		return surcharge;
	}
	public void setSurcharge(double surcharge) {
		this.surcharge = surcharge;
	}
	public double getGridcharges() {
		return gridcharges;
	}
	public void setGridcharges(double gridcharges) {
		this.gridcharges = gridcharges;
	}
	public double getOthercharges() {
		return othercharges;
	}
	public void setOthercharges(double othercharges) {
		this.othercharges = othercharges;
	}
	public double getAdjustment() {
		return adjustment;
	}
	public void setAdjustment(double adjustment) {
		this.adjustment = adjustment;
	}
	public double getTrue_up() {
		return True_up;
	}
	public void setTrue_up(double true_up) {
		True_up = true_up;
	}
	public double getBILL_AMT() {
		return BILL_AMT;
	}
	public void setBILL_AMT(double bILL_AMT) {
		BILL_AMT = bILL_AMT;
	}
	public boolean isStatus() {
		return status;
	}
	public void setStatus(boolean status) {
		this.status = status;
	}
	@Override
	public String toString() {
		return "bills [id=" + id + ", servicenumber=" + servicenumber + ", name=" + name + ", phno=" + phno
				+ ", sectionoffice=" + sectionoffice + ", address=" + address + ", ero=" + ero + ", caterogy="
				+ caterogy + ", paymentno=" + paymentno + ", billdate=" + billdate + ", duedate=" + duedate + ", units="
				+ units + ", cost=" + cost + ", fixedcharges=" + fixedcharges + ", customercharges=" + customercharges
				+ ", electricityduty=" + electricityduty + ", interestoned=" + interestoned + ", surcharge=" + surcharge
				+ ", gridcharges=" + gridcharges + ", othercharges=" + othercharges + ", adjustment=" + adjustment
				+ ", True_up=" + True_up + ", BILL_AMT=" + BILL_AMT + ", status=" + status + "]";
	}
	
}
