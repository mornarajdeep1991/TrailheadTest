trigger AccountRecordType_Contact on Contact (before insert,before update) {

    if (trigger.isbefore && trigger.isinsert || trigger.isbefore && trigger.isupdate){
        
        AccountRecordType_Handler.doBeforeinsert(trigger.new);
        
        
    }
    
}