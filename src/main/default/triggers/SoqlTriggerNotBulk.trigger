trigger SoqlTriggerNotBulk on Account (after update) {
    for(Account a:Trigger.New){
        Opportunity[] opps=[Select Id,Name,CloseDate from Opportunity where AccountId=:a.Id];
            System.debug('Account With Opportunity:  Account Name:'+Account.Name+' Opprotunity Name: '+opps[2]);
    }

}