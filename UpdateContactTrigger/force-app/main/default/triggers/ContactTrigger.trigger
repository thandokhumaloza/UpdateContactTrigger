trigger ContactTrigger on contact (before update) {
    
    // Trigger.New holds a new version of Contacts
    for(Contact contact: Trigger.new){
        contact.Description = 'Contact updated successfully by '+ userInfo.getUserName() ;
    }
    // No Need to write DML statement. Trigger.New will take care of it.
}