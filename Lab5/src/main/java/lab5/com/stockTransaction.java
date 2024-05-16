package lab5.com;

/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */

/**
 *
 * @Nur Ezreena
 */

import java.io.Serializable;

public class stockTransaction implements Serializable {
    private int numberOfShares;
    private double pricePerShare;
    private double commissionRate;

    public stockTransaction() {
    }

    public int getNumberOfShares() {
        return numberOfShares;
    }

    public void setNumberOfShares(int numberOfShares) {
        this.numberOfShares = numberOfShares;
    }

    public double getPricePerShare() {
        return pricePerShare;
    }

    public void setPricePerShare(double pricePerShare) {
        this.pricePerShare = pricePerShare;
    }

    public double getCommissionRate() {
        return commissionRate;
    }

    public void setCommissionRate(double commissionRate) {
        this.commissionRate = commissionRate;
    }

    public double getAmountPaidForStock() {
        return numberOfShares * pricePerShare;
    }

    public double getCommissionAmount() {
        return getAmountPaidForStock() * commissionRate / 100;
    }

    public double getTotalAmountPaid() {
        return getAmountPaidForStock() + getCommissionAmount();
    }
}