package Bankrental;
// Generated Jun 5, 2011 5:23:41 PM by Hibernate Tools 3.2.1.GA



/**
 * Loaninfo generated by hbm2java
 */
public class Loaninfo  implements java.io.Serializable {


     private Integer loanInfoId;
     private String loanType;
     private double rateOfInterest;
     private double minDownPayment;

    public Loaninfo() {
    }

    public Loaninfo(String loanType, double rateOfInterest, double minDownPayment) {
       this.loanType = loanType;
       this.rateOfInterest = rateOfInterest;
       this.minDownPayment = minDownPayment;
    }
   
    public Integer getLoanInfoId() {
        return this.loanInfoId;
    }
    
    public void setLoanInfoId(Integer loanInfoId) {
        this.loanInfoId = loanInfoId;
    }
    public String getLoanType() {
        return this.loanType;
    }
    
    public void setLoanType(String loanType) {
        this.loanType = loanType;
    }
    public double getRateOfInterest() {
        return this.rateOfInterest;
    }
    
    public void setRateOfInterest(double rateOfInterest) {
        this.rateOfInterest = rateOfInterest;
    }
    public double getMinDownPayment() {
        return this.minDownPayment;
    }
    
    public void setMinDownPayment(double minDownPayment) {
        this.minDownPayment = minDownPayment;
    }




}

