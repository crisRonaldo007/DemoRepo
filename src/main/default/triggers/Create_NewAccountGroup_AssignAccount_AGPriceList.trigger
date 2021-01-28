trigger Create_NewAccountGroup_AssignAccount_AGPriceList on Contact (after insert) {
	List<ccrz__E_AccountGroup__c> accgrp=new List<ccrz__E_AccountGroup__c>();
     for(Contact a:Trigger.new)
     {
         	ccrz__E_AccountGroup__c agrp= new ccrz__E_AccountGroup__c();
            agrp.Name= 'Test Account Group';
            accgrp.add(agrp);
     
     }
      insert accgrp;
     
}