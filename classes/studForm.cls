public class studForm 
{
@AuraEnabled
    public static Student__c studform(Student__c acc)
    {
        system.debug('acc:'+acc);
         acc.Class__c = [SELECT id FROM Class__c WHERE Name = 'IX' LIMIT 1].id;
        upsert acc;
        return acc;
       
    }
    
    @AuraEnabled
    public static List <Account> fetchAccounts() {
        //Qyery 10 accounts
        List<Account> accList = [SELECT Id, Name, BillingState, 
                                    Website, Phone, Industry, Type from Account LIMIT 10];
        //return list of accounts
        return accList;
    }
}