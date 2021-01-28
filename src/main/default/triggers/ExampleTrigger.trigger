trigger ExampleTrigger on Contact (after insert,after delete) {
    if(Trigger.isInsert){
        Integer recordCount=Trigger.New.size();
        EmailManager.sendMail('sangeet.s@hcl.com','Trailhead trigger tutorial',+recordCount+'Contact(s) were inserted');
    }
    else if(Trigger.isDelete){
        
    }

}