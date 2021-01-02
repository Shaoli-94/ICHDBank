package chapter3.transferfund;

public class ValidatingFundTransfer {
	static public String staticPasswordStatus;
	static public String staticAmountStatus;
	static public String staticBalanceStatus;
	static public double staticNewBalanceStatus;

	public ValidatingFundTransfer() {
	}

	public void validateAmount(double amount, double balance) {
		if (staticPasswordStatus.compareTo("Valid") == 0) {
			if (amount > 0) {
				if (amount > balance) {
					staticAmountStatus = "InSufficientFunds";
				} else {
					staticAmountStatus = "SufficientFunds";
				}
			} else {
				staticAmountStatus = "IlleagalValue";
			}
		}
	}

	public void validatePassword(String trnPassword) {

		if (trnPassword.compareTo("trn0001") == 0) {
		staticPasswordStatus = "Valid";
		} else {
			staticPasswordStatus = "Invalid";
		}

	}

	public void updateBalance(double amount, double balance) {
		if (staticPasswordStatus.compareTo("Valid") == 0 && staticAmountStatus.compareTo("SufficientFunds") == 0) {
			staticNewBalanceStatus = balance - amount;
		}
	}
}