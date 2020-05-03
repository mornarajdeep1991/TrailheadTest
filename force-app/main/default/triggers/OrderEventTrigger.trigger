trigger OrderEventTrigger  on Order_Event__e (after insert) {
List<Task> Tasks= new List<Task>();
    
 
    // Iterate through each notification.
    for (Order_Event__e event : Trigger.New) {
        if (event.Has_Shipped__c == true) {
            // Create Case to dispatch new team.
            task cs = new task();
            cs.Priority = 'Medium';
            cs.Subject = 'Follow up on shipped order ' + event.Order_Number__c;
            cs.OwnerId = event.CreatedById;
            Tasks.add(cs);
        }
   }
   insert Tasks;
}