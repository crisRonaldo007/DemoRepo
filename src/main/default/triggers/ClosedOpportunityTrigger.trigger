trigger ClosedOpportunityTrigger on Opportunity (after insert, after update) {
    List<Task> taskListToInsert = new List<Task>();
    
    for(Opportunity o: Trigger.new)
    {
        if(o.StageName=='Closed Won' && ( trigger.isInsert || (trigger.isUpdate && trigger.oldMap.get(o.Id).StageName != 'Closed Won') ))
        {
            Task t = new Task();
            t.Subject = 'Follow Up Test Task';
            t.WhatId = o.Id;
            taskListToInsert.add(t);
        }

    }
    if(taskListToInsert.size()>0)
    {
        insert taskListToInsert;
    }
}