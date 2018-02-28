package com.xuexin.wangshen.util.calmarks;

public class CaculatorBuilder {

	public static final MarksCaculator BuildByType(int nType) {
		switch(nType) {
		case 1:
			return new MarksCaculator1IsFilled();
		case 2:
			return new MarksCaculator2IsMobileNumber();
		case 3:
			return new MarksCaculator3IsIDCard();
		case 4:
			return new MarksCaculator4KeyWords();
		case 5:
			return new MarksCaculator5HummanHeight();
		case 6:
			return new MarksCaculator6HummanWeight();
		case 7:
			return new MarksCaculator7WordCount();
		case 8:
			return new MarksCaculator8DigitalRange();
		}
		
		return new MarksCaculatorInvalid();
	}
}
