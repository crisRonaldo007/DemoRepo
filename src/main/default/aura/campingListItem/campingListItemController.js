({
	packItem : function(component, event, helper) {
        var item=component.get("v.item");
        item.packed__c=true;
        component.set("v.item",item);
        event.getSource().set("v.disabled","true");
		
	}
})