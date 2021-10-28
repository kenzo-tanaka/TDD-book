package money;

import static org.junit.jupiter.api.Assertions.*;

import org.junit.jupiter.api.Test;

class MoneyTest {

	@Test
	public void testMulti() {
		Money five = Money.dollar(5);
		assertEquals(Money.dollar(10), five.times(2));
		assertEquals(Money.dollar(15), five.times(3));
	}
	
	@Test
	public void testEqual() {
		assertTrue(Money.dollar(5).equals(new Dollar(5)));
		assertFalse(Money.dollar(5).equals(new Dollar(6)));
		assertTrue(Money.franc(5).equals(new Franc(5)));
		assertFalse(Money.franc(5).equals(new Franc(6)));
		assertFalse(Money.franc(5).equals(Money.dollar(5)));
	}
	
	@Test
	public void testFrancMulti() {
		Money five = Money.franc(5);
		assertEquals(Money.franc(10), five.times(2));
		assertEquals(Money.franc(15), five.times(3));
	}

}
