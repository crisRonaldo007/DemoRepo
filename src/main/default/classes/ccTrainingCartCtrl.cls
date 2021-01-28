global with sharing class ccTrainingCartCtrl {
    global static String blank {get{return ''; } private set;}
    
    @RemoteAction
global static ccrz.cc_RemoteActionResult createCreditCase(final ccrz.cc_RemoteActionContext
ctx) 
{
ccrz.cc_RemoteActionResult res = ccrz.cc_CallContext.init(ctx); 
res.success = false; 
res.inputContext = ctx; // < 
try
{
List<String> cartidlist = new List<String>{};
cartidlist.add(ctx.currentCartId); 

Map<String, Object> cartApiFetchResponse = ccrz.ccApiCart.fetch(new
Map<String,Object>{
ccrz.ccApi.API_VERSION => ccrz.ccApi.CURRENT_VERSION,
ccrz.ccApiCart.CART_ENCIDLIST => cartidlist,
ccrz.ccApi.SIZING=>new Map<String, Object>{
ccrz.ccApiCart.ENTITYNAME => new Map<String, Object>{
ccrz.ccAPI.SZ_SKIPTRZ=>true

} }
});

List<ccrz__E_Cart__c> cartRes =
(List<ccrz__E_Cart__c>)cartApiFetchResponse.get(ccrz.ccApiCart.CART_OBJLIST);
ccrz__E_Cart__c theCart = null;
if(cartRes.get(0) != null) 
{
theCart = (ccrz__E_Cart__c)cartRes.get(0);
ccrz.ccLog.log(LoggingLevel.DEBUG,
'ccTrainingCartCtrl:createCreditCase:theCart', theCart);
theCart.CreditOverrideRequested__c = TRUE; 
Case caseRequest = new Case(); 
// Exercise TODO
caseRequest.Origin = '' ; 
caseRequest.Reason = '' ; 
caseRequest.Type = '' ; 
caseRequest.Subject = '' ; 
caseRequest.SourceCart__c = null; 
caseRequest.ContactId = null; 
caseRequest.AccountId = null; 
insert caseRequest;
 update theCart;
res.success = true;
}
}
catch(Exception e)
{
res.data = e;
res.success = false;
} finally {
ccrz.ccLog.close(res);
}
return res;
}
}