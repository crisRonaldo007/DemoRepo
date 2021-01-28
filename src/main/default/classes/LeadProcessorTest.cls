@istest
private class LeadProcessorTest {
    @istest
    static void tetslead(){
        List<Lead> I=new List<Lead>();
        Lead l1=new lead();
        l1.LastName='Surya';
        l1.Company='Company';
        l1.Status='Closed-Converted';
        l1.LeadSource='Dreamforce';
        I.add(l1);
        insert I;
        
        Test.startTest();
        LeadProcessor lp=new LeadProcessor();
        Id jobid=Database.executeBatch(lp);
        Test.stopTest();
    }
	
}