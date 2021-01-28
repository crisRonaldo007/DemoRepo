public class ContactSearch {
    public static List<Contact> searchForContacts(String lastName,String postalCode)
    {                
        return [select LastName,MailingPostalCode from Contact order by LastName,MailingPostalCode desc];
    }

}