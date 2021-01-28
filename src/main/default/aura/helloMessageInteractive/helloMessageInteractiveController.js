({
	handleClick : function(component, event, helper) {
        var btnclicked=event.getSource();
        var btnmsg=btnclicked.get("v.label");
        component.set("v.message",btnmsg);
		
	},
    
    handleClick2 : function(component,event,helper){
    	var newMessage=event.getSource().get("v.label");
        console.log("handleClick2: Message: " + newMessage);
    component.set("v.message",newMessage);
},
    handleClick3 : function(component,event,handler)
    {
        component.set("v.message",event.getSource().get("v.label"));
    }
})