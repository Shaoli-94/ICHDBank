/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package chapter3.model;

/**
 *
 * @author XYZ
 */
public class Account {

    /**
     * @return the accountNumber
     */
    public String getAccountNumber() {
        return accountNumber;
    }

    /**
     * * @param accountNumber the accountNumber to set
     */
    public void setAccountNumber(String accountNumber) {
        this.accountNumber = accountNumber;
    }

    /**
     * @return the accountCreationDate
     */
    public String getAccountCreationDate() {
        return accountCreationDate;
    }

    /**
     * @param accountCreationDate the accountCreationDate to set
     */
    public void setAccountCreationDate(String accountCreationDate) {
        this.accountCreationDate = accountCreationDate;
    }
     /**
     * @return the balance
     */
    public double getBalance() {
        return balance;
    }

    /**
     * @param balance the balance to set
     */
    public void setBalance(double balance) {
        this.balance = balance;
    }

    /**
     * @return the accountType
     */
    public String getAccountType() {
        return accountType;
    }

    /**
     * @param accountType the accountType to set
     */
    public void setAccountType(String accountType) {
        this.accountType = accountType;
    }
    private String accountNumber;
    private String accountCreationDate;
    private double balance;
    private String accountType;

    public Account() {
    }

    public Account(String accountNumber, String accountCreationDate, double balance, String accountType) {
        this.accountNumber = accountNumber;
        this.accountCreationDate = accountCreationDate;
        this.balance = balance;
        this.accountType = accountType;
    }

}


     