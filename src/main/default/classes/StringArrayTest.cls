public class StringArrayTest {

    public static List<String> generateStringArray(integer len)
    {
        String[] L=new List<String>();
        for(integer i=0;i<len;i++)
        {
            L.add('Test '+i);
            System.debug(L[i]);
        }	
      
           return L;
    }
}