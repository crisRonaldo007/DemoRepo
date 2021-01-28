public with sharing class AccountController {
    @AuraEnabled
    public static List<Contact> getRelatedContacts(Id accountId){
    return [Select Name,Title,Email,Phone from Contact where AccountId=:accountId WITH SECURITY_ENFORCED];
    }
}