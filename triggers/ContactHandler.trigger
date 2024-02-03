trigger ContactHandler on Contact (before insert, after insert,after update, after delete, after undelete) {

    if(Trigger.isAfter && Trigger.isUpdate){
        //ContactTriggerHandler.updateRelatedAccdescription(Trigger.new,Trigger.oldMap);
    }

    // count total number of contacts associted to an Account


    /*
    if(Trigger.isAfter && Trigger.isInsert || Trigger.isUndelete){
        ContactTriggerHandler.countTotalContacts(Trigger.new,null);
    }else if(Trigger.isAfter && Trigger.isUpdate){
        ContactTriggerHandler.countTotalContacts(Trigger.new,Trigger.oldMap);
    }else if(Trigger.isAfter && Trigger.isDelete){
        ContactTriggerHandler.countTotalContacts(Trigger.old,null);
    }
    */
}