public class ContactAndLeadSearch {
    public static List<List<SObject>> searchContactsAndLeads (String str)
    {
        String searchQuery='FIND \''+str+'\'IN ALL FIELDS Returning Lead(Name,FirstName,LastName ),Contact(FirstName,LastName )';
        List<List<SObject>> searchConLead=search.query(searchQuery);
        return searchConLead;
    }

}