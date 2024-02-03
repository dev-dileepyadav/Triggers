trigger AccountTrigger on Account (after insert, after update,before insert,before update, after delete) {
/*
    if(Trigger.isInsert && Trigger.isAfter){
        AccountHandler.createRelatedContact(Trigger.new,null);
    }

    
    if(Trigger.isUpdate && Trigger.isAfter){
        AccountHandler.createRelatedContact(Trigger.new,Trigger.oldMap);
    }

    
    //if(Trigger.isBefore && Trigger.isInsert){
     //   AccountHandler.canNotInsertAccWithoutPhone(Trigger.new);
    //}

    if(Trigger.isBefore && Trigger.isInsert){
        AccountHandler.updateBillingAddress(Trigger.new);
    }

    if(Trigger.isAfter && Trigger.isUpdate){
        AccountHandler.updaterelatedContactField(Trigger.new,Trigger.oldMap);
    }

    if(Trigger.isBefore && (Trigger.isInsert || Trigger.isUpdate)){
       // AccountHandler.avoideDuplicateName(Trigger.new);
    }

    if(Trigger.isAfter && Trigger.isInsert){
        AccountHandler.createRelatedContact(Trigger.new);
    }

    if(Trigger.isAfter && Trigger.isUpdate){
        for(Account acc : Trigger.new){
            AccountHandler.sendEmails(Trigger.new,Trigger.oldMap);
        }
        
    }

    */


    if(Trigger.isAfter && Trigger.isUpdate){
        AccountHandler.updateAccountCountOnUserOnUpdate(Trigger.new);
    }

    if(Trigger.isAfter && Trigger.isDelete){
        AccountHandler.updateAccountCountOnUserOnDelete(Trigger.old);
    }
}