package money;

public class Dollar extends Money {
	private String currency;
	public Dollar(int amount) {
		this.amount = amount;
		this.currency = "USD";
	}
	
	String currency() {
		return currency;
	}
	
	Money times(int multiplier) {
		return new Dollar(amount * multiplier);
	}
}
