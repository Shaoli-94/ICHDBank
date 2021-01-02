package chapter3.transferfund;

import java.lang.reflect.Method;
import org.springframework.aop.AfterReturningAdvice;
import org.springframework.aop.MethodBeforeAdvice;
import org.springframework.aop.ThrowsAdvice;

public class FundTransferAdvice implements MethodBeforeAdvice, AfterReturningAdvice, ThrowsAdvice {
	// private Audience audience

	private ValidatingFundTransfer validateFundTransfer;

	@Override
	public void before(Method method, Object[] args, Object target) throws Throwable {
		validateFundTransfer.validatePassword(args[0].toString());
		System.out.println(args[3]);
		validateFundTransfer.validateAmount(Double.parseDouble(args[2].toString()),
				Double.parseDouble(args[3].toString()));
	}

	@Override
	public void afterReturning(Object returnValue, Method method, Object[] args, Object target) throws Throwable {
		validateFundTransfer.updateBalance(Double.parseDouble(args[2].toString()),
				Double.parseDouble(args[3].toString()));
	}

	public void afterThrowing(Throwable throwable) {
	}

	/**
	 * @param validateFundTransfer the validateFundTransfer to set
	 */
	public void setValidateFundTransfer(ValidatingFundTransfer validateFundTransfer) {
		this.validateFundTransfer = validateFundTransfer;
	}
}

