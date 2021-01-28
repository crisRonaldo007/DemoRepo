trigger AddRelatedRecord on Account (after insert,after update) {
    List<Opportunity> oppList=new List<opportunity>();
    Map<Id,Account> acctwithopps=new Map<ID,Account>([Select Id,(Select Id from Opportunities) from Account Where ID IN:Trigger.New]);
    for(Account a:Trigger.New){
        System.debug('acctwithopps.get(a.Id).Opportunities.size()= '+acctwithopps.get(a.Id).Opportunities.size());
        if(acctwithopps.get(a.Id).Opportunities.size()==0)
        {
            OppList.add(new Opportunity(Name=a.Name + ' Opportunity',StageName='Perception Analysis',CloseDate=System.today().addMonths(1),AccountID=a.Id));
                       
        }
    }
    if(oppList.size()>0)
    {
        insert OppList;
    }
    
}