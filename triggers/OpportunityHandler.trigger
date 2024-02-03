trigger OpportunityHandler on Opportunity (after insert, after update, after delete, after undelete) {
/*
    if(Trigger.isUpdate && Trigger.isAfter){
        OpportunityHandler.getHighestAmountOpportunity(Trigger.new,Trigger.oldMap);
    }else if(Trigger.isAfter && Trigger.isdelete){
        OpportunityHandler.getHighestAmountOpportunity(Trigger.old,null);
    }else if(Trigger.isAfter && (Trigger.isInsert || Trigger.isundelete)){
        OpportunityHandler.getHighestAmountOpportunity(Trigger.new,null);
    }
*/

    if(Trigger.isUpdate && Trigger.isAfter){
        OpportunityHandler.getSumOfAmount(Trigger.new,Trigger.oldMap);
    }else if(Trigger.isAfter && Trigger.isdelete){
        OpportunityHandler.getSumOfAmount(Trigger.old,null);
    }else if(Trigger.isAfter && (Trigger.isInsert || Trigger.isundelete)){
        OpportunityHandler.getSumOfAmount(Trigger.new,null);
    }
}