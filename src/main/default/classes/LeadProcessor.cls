global class LeadProcessor implements Database.Batchable<SObject> {
    global Database.QueryLocator start(Database.BatchableContext bc){
        String Query='Select id,LeadSource from Lead';
        return Database.getQueryLocator(Query);
        
    }
    global void execute(Database.BatchableContext bc, List<Lead> scope)
    {
        for(Lead l:scope){
            l.LeadSource='Dreamforce';
                }
        update scope;
    }
    global void finish(Database.BatchableContext bc){
        Id job=bc.getJobId();
        System.debug(job);
    }

}