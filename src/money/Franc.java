package money;

public class Franc extends Money {
	private String currency;
	
	public Franc(int amount) {
		this.amount = amount;
		this.currency = "CHF";
	}
	
	String currency() {
		return currency;
	}
	
	Money times(int multiplier) {
		return new Franc(amount * multiplier);
	}
}
