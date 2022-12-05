package com.klu.entity;

import java.sql.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "history")

public class History {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private long id;
	private long servicenumber;
	private String name;
	private Long phno;
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
	public String getBilldate() {
		return billdate;
	}
	public void setBilldate(String billdate) {
		this.billdate = billdate;
	}
	public String getDuedate() {
		return duedate;
	}
	public void setDuedate(String duedate) {
		this.duedate = duedate;
	}
	public double getUnits() {
		return units;
	}
	public void setUnits(double units) {
		this.units = units;
	}
	public double getCost() {
		return cost;
	}
	public void setCost(double cost) {
		this.cost = cost;
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
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	private String address;
	private String ero;
	private String caterogy;
	private Long paymentno;
	private String billdate;
	private String duedate;
	private double units;
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
	private String status;
	@Override
	public String toString() {
		return "History [id=" + id + ", servicenumber=" + servicenumber + ", name=" + name + ", phno=" + phno
				+ ", address=" + address + ", ero=" + ero + ", caterogy=" + caterogy + ", paymentno=" + paymentno
				+ ", billdate=" + billdate + ", duedate=" + duedate + ", units=" + units + ", cost=" + cost
				+ ", fixedcharges=" + fixedcharges + ", customercharges=" + customercharges + ", electricityduty="
				+ electricityduty + ", interestoned=" + interestoned + ", surcharge=" + surcharge + ", gridcharges="
				+ gridcharges + ", othercharges=" + othercharges + ", adjustment=" + adjustment + ", True_up=" + True_up
				+ ", status=" + status + "]";
	}
}
