public class AccountHandler {
    public static Account insertNewAccount(String str)
    {
        Account acc=new Account();
        acc.Name=str;
        try{
            insert acc;
        }catch(Exception e){
            return null;
        }
        return acc;
	
    }

}