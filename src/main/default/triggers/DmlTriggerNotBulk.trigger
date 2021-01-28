trigger DmlTriggerNotBulk on Account (after update,after insert){
   List<Opportunity> relops = [Select Id,Name,Probability FROM Opportunity
        WHERE AccountId IN :Trigger.New]; 
            for(Opportunity op : relops){
                if((op.Probability >= 50)&&(op.Probability < 100)){
                    op.Description='New description for Opportunity';
                        update op;
                }
            }
    
    }