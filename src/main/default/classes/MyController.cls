public class MyController {
    private final Account account;
    public MyController(){
        account=[select Id, Name,Site from Account Where Id=:ApexPages.currentPage().getParameters().get('id')];
        
    }
    public Account getAccount()
    {
        return account;
    }
    public PageReference save(){
        update account;
        return null;
    }

}