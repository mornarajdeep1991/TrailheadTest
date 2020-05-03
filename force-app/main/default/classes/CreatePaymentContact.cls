public class CreatePaymentContact {
    
    @AuraEnabled
    public static String relatetoAcc(Id conId){
        system.debug('conId'+conId);
        List<Contact> conList = new List<Contact>();
        Contact c = new Contact();
        c.id=conId;
        c.AccountId='0014J00000H0CuhQAF';
        Update c;
        return c.Id;
    }
    @AuraEnabled
    public static String relatepayment(Id conId,Id paymentId){
        
        
       return null; 
        
    }
}