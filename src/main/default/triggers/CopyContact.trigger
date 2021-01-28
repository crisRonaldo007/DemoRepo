trigger CopyContact on Contact (after insert) {

   List<Copy_Contact__c> obj =new List<Copy_Contact__c>();
    for(Contact con : Trigger.new)
    {
         Copy_Contact__c c= new Copy_Contact__c(LastName__c=con.LastName,
                                                        ownerId='00G7F000002Xn6Z',
                                                        contact__c=con.Id);
              
        //obj[0].Name=con.Name;
        //c.LastName__c=con.LastName;
        //c.ownerId = '00G7F000002Xn6Z'; //queueId
        //c.contact__c = con.Id; //ContactId
        obj.add(c);
    }
    
    if(!obj.isEmpty())
       insert obj;


}