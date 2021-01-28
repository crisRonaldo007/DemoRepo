trigger CreateApproveUserQueue on Contact (after insert) {
    for (Contact con : Trigger.new) {
        String queueName = 'ApproveUserQueue';
        Group queue = new Group(Name=queueName, Type='Queue',DoesSendEmailToMembers=false);
        insert queue;

        QueuesObject qso = new QueueSObject(QueueID = queue.id, SobjectType = 'Copy_Contact__c');
       insert qso;

    }
    //Set groupids= new Map(queue).keySet();
    // call in future context to avoid MIXED DML conflicts
    //sessionhandler.createQueue(groupIds); 

}