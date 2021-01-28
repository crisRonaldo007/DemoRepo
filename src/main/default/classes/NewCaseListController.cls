public class NewCaseListController {
    
    public List<Case> getNewCases(){
        List<Case> lcase=[Select CaseNumber from Case where Status='New'];
        return lcase;
    }

}