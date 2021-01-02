package chapter3.controller;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import chapter3.model.Account;
import chapter3.model.FundTransfer;
import chapter3.transferfund.FundTransferApp;
import chapter3.transferfund.ValidatingFundTransfer;

@Controller
@RequestMapping(value = "/fundtransfer.htm")
public class FundTransferController {

	private ValidatingFundTransfer validatingFundTransfer;

	@RequestMapping(method = RequestMethod.GET)
	public String showLoginView(ModelMap model) {
		FundTransfer ft = new FundTransfer();
		model.addAttribute("transferaccount", ft);
		return "fundtransfer";
	}

	

	@RequestMapping(method = RequestMethod.POST)
	public String processForm(@ModelAttribute(value = "transferaccount") FundTransfer act, ModelMap model) {
		String message = "";
		ApplicationContext ctx = new ClassPathXmlApplicationContext("chapter3/config/Spring-Config.xml");
		FundTransferApp ft = (FundTransferApp) ctx.getBean("transferProxy");
                
		Account acc = (Account) ctx.getBean("AccountBean");
		ft.transferAmount(act.getTransactionPassword(), act.getToAccount(), act.getAmount(), acc.getBalance());
		if (ValidatingFundTransfer.staticPasswordStatus.compareTo("Valid") == 0) {
			if (ValidatingFundTransfer.staticAmountStatus.compareTo("IlleagalValue") == 0) {
				message = "Please Enter the Amount Greater than 0";
			} else if (ValidatingFundTransfer.staticAmountStatus.compareTo("InSufficientFunds") == 0) {
				message = "You Don't have Sufficient Funds";
			} else {
				message = "Transaction Successful";
				message = message + " <p>Amount of $" + act.getAmount()
						+ " has been transferred. Your current balance is: $"
						+ ValidatingFundTransfer.staticNewBalanceStatus;
			}
		} else {
			message = "You have entered an Invalid Transaction Password";
		}
		model.addAttribute("message", message);
		return "transfer";
	}

	/**
	 * @param validatingFundTransfer the validatingFundTransfer to set
	 */
	public void setValidatingFundTransfer(ValidatingFundTransfer validatingFundTransfer) {
		this.validatingFundTransfer = validatingFundTransfer;
	}
}
