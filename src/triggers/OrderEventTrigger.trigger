trigger OrderEventTrigger on Order_Event__e (after insert) {
	List<Task> tasks = new List<task>();
    
    // Get queue Id for case owner
    //Group queue = [SELECT Id FROM Group WHERE Name='Anagha Gowda' LIMIT 1];
     String usr=UserInfo.getUserId();  
    // Iterate through each notification.
    for (Order_Event__e event : Trigger.New) {
        if (event.Has_Shipped__c == true) {
            // Create Case to dispatch new team.
            Task tk = new Task();
            tk.Priority = 'Medium';
            tk.Status = 'New';
            tk.Subject = 'Follow up on shipped order ' + event.Order_Number__c;
            tk.OwnerId = usr;
            tasks.add(tk);
        }
   }
    
    // Insert all cases corresponding to events received.
    insert tasks;
}