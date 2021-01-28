trigger AccountDeletion on Account (before delete) {
    for(Account a: [Select ID from Account Where Id in (Select AccountId From Opportunity) AND
                    Id in:Trigger.old]){
                        Trigger.oldMap.get(a.ID).addError('Cannot delete account with related Opportunities');
                    }

}