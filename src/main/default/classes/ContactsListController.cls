public class ContactsListController {
    private String sortOrder = 'Lastname';
    
    public List<Contact> getContacts(){
        List<Contact> results=Database.query('Select Id,FirstName,LastName,Title,Email '+
                                            'From Contact '+
                                            'order by '+sortOrder+' ASC '+'Limit 10');
        return results;
    }

}