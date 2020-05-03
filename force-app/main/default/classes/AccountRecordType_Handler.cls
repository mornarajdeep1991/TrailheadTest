public class AccountRecordType_Handler {

    public static void doBeforeinsert(list<contact> cons){ //we have to cast the generic object back into it's actual sObject type
       // Get a list of all Parent Ids
   Set<Id> AccountIds = new Set<Id>();
    for (Contact con : cons) {
      AccountIds.add(con.Accountid);
   }

   // Get a map of all Parents with field information
Map<Id, Account> AccountsById = new Map<Id, Account>();
AccountsById.putAll([SELECT Id, Recordtype.name FROM Account WHERE Id IN :AccountIds]);

 for(contact c:cons){ 
      c.AP_LNG_Account_Record_Type__c=AccountsById.get(c.Accountid).Recordtype.name;
     
   }
    }
    
}