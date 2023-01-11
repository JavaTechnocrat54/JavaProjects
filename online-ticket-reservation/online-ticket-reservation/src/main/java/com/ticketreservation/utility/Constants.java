package com.ticketreservation.utility;

public class Constants {
	
	public enum Transport {
		BUS("Bus"),
		AIRLINE("Airline"),
		TRAIN("Train");
		
		private String transport;

	    private Transport(String transport) {
	      this.transport = transport;
	    }

	    public String value() {
	      return this.transport;
	    }
	     
	}
	
	public enum BookingTiming {
		NINE_AM("09:00 am"),
		TEN_AM("10:00 am"),
		ELEVEN_AM("11:00 am"),
		TWELVE_PM("12:00 pm"),
		ONE_PM("01:00 pm"),
		TWO_PM("02:00 pm"),
		THREE_PM("03:00 pm"),
		FOUR_PM("04:00 pm"),
		FIVE_PM("05:00 pm"),
	    SIX_PM("06:00 pm"),
		SEVEN_PM("07:00 pm"),
		EIGHT_PM("08:00 pm"),
		NINE_PM("09:00 pm");
		
		private String time;

	    private BookingTiming(String time) {
	      this.time = time;
	    }

	    public String value() {
	      return this.time;
	    } 
	}

}
