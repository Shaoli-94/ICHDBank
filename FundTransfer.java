package chapter3.model;

public class FundTransfer {
	private double amount;
	private String transactionPassword;
	private String toAccount;

	public FundTransfer() {
	}

	public FundTransfer(double amount) {
		this.amount = amount;
	}

	/**
	 * @return the amount
	 */
	public double getAmount() {
		return amount;
	}

	/**
	 * @param amount the amount to set
	 */
	public void setAmount(double amount) {
		this.amount = amount;
	}

	/**
	 * @return the transactionPassword
	 */
	public String getTransactionPassword() {
		return transactionPassword;
	}

	/**
	 * @param transactionPassword the transactionPassword to set
	 */
	public void setTransactionPassword(String transactionPassword) {
		this.transactionPassword = transactionPassword;
	}

	/**
	 * @return the toAccount
	 */
	public String getToAccount() {
		return toAccount;
	}

	/**
	 * @param toAccount the toAccount to set
	 */
	public void setToAccount(String toAccount) {
		this.toAccount = toAccount;
	}

}