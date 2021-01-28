public class TemperatureConverter {
    public static Decimal FtoC(Decimal fh){
        Decimal cs=(fh-32)* 5/9;
        return cs.setScale(2);
    }

}