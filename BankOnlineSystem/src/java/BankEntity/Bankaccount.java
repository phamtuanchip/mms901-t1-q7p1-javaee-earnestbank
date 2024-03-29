package BankEntity;
// Generated Jun 5, 2011 5:23:41 PM by Hibernate Tools 3.2.1.GA


import java.util.HashSet;
import java.util.Set;

/**
 * Bankaccount generated by hbm2java
 */
public class Bankaccount  implements java.io.Serializable {


     private String accType;
     private double minBalAmount;
     private double rateOfInterest;
     private Set<Banktrans> banktranses = new HashSet<Banktrans>(0);

    public Bankaccount() {
    }

	
    public Bankaccount(String accType, double minBalAmount, double rateOfInterest) {
        this.accType = accType;
        this.minBalAmount = minBalAmount;
        this.rateOfInterest = rateOfInterest;
    }
    public Bankaccount(String accType, double minBalAmount, double rateOfInterest, Set<Banktrans> banktranses) {
       this.accType = accType;
       this.minBalAmount = minBalAmount;
       this.rateOfInterest = rateOfInterest;
       this.banktranses = banktranses;
    }
   
    public String getAccType() {
        return this.accType;
    }
    
    public void setAccType(String accType) {
        this.accType = accType;
    }
    public double getMinBalAmount() {
        return this.minBalAmount;
    }
    
    public void setMinBalAmount(double minBalAmount) {
        this.minBalAmount = minBalAmount;
    }
    public double getRateOfInterest() {
        return this.rateOfInterest;
    }
    
    public void setRateOfInterest(double rateOfInterest) {
        this.rateOfInterest = rateOfInterest;
    }
    public Set<Banktrans> getBanktranses() {
        return this.banktranses;
    }
    
    public void setBanktranses(Set<Banktrans> banktranses) {
        this.banktranses = banktranses;
    }




}


