package Bankrental;
// Generated Jun 5, 2011 5:23:41 PM by Hibernate Tools 3.2.1.GA


import java.util.Date;

/**
 * Banktrans generated by hbm2java
 */
public class Banktrans  implements java.io.Serializable {


     private Integer bankTransId;
     private Bankaccount bankaccount;
     private Customer customer;
     private int bankAccNumber;
     private double bankTransAmount;
     private Date tranDate;

    public Banktrans() {
    }

	
    public Banktrans(int bankAccNumber, double bankTransAmount, Date tranDate) {
        this.bankAccNumber = bankAccNumber;
        this.bankTransAmount = bankTransAmount;
        this.tranDate = tranDate;
    }
    public Banktrans(Bankaccount bankaccount, Customer customer, int bankAccNumber, double bankTransAmount, Date tranDate) {
       this.bankaccount = bankaccount;
       this.customer = customer;
       this.bankAccNumber = bankAccNumber;
       this.bankTransAmount = bankTransAmount;
       this.tranDate = tranDate;
    }
   
    public Integer getBankTransId() {
        return this.bankTransId;
    }
    
    public void setBankTransId(Integer bankTransId) {
        this.bankTransId = bankTransId;
    }
    public Bankaccount getBankaccount() {
        return this.bankaccount;
    }
    
    public void setBankaccount(Bankaccount bankaccount) {
        this.bankaccount = bankaccount;
    }
    public Customer getCustomer() {
        return this.customer;
    }
    
    public void setCustomer(Customer customer) {
        this.customer = customer;
    }
    public int getBankAccNumber() {
        return this.bankAccNumber;
    }
    
    public void setBankAccNumber(int bankAccNumber) {
        this.bankAccNumber = bankAccNumber;
    }
    public double getBankTransAmount() {
        return this.bankTransAmount;
    }
    
    public void setBankTransAmount(double bankTransAmount) {
        this.bankTransAmount = bankTransAmount;
    }
    public Date getTranDate() {
        return this.tranDate;
    }
    
    public void setTranDate(Date tranDate) {
        this.tranDate = tranDate;
    }




}


