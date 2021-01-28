@isTest	
public class TemperatureConverterTest {
     @isTest static void testWarmTemp() {
        Decimal celsius = TemperatureConverter.FtoC(70);
        System.assertEquals(21.11,celsius);
    }
    @isTest static void testFreezingPoint() {
        Decimal celsius = TemperatureConverter.FtoC(32);
        System.assertEquals(0,celsius);
    }
    @isTest static void testBoilingPoint() {
        Decimal celsius = TemperatureConverter.FtoC(212);        
        System.assertEquals(100,celsius,'Boiling point temperature is not expected.');
    } 
    
    @isTest static void testNegativeTemp() {
        Decimal celsius = TemperatureConverter.FtoC(-10);
        System.assertEquals(-23.33,celsius);
    }

}