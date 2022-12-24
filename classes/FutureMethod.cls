public class FutureMethod {
    @future
    public static void countOfContacts(){
        List<Account> accList=[SELECT Id,(SELECT Id,Name FROM Contacts) FROM Account];
        for(Account acc:accList){
            acc.Number_Of_Contacts__c=acc.Contacts.size();
            for(Contact cn:acc.Contacts){
            system.debug('Contact Name :'+cn.Name);
        }
    }
     DATABASE.update(accList);
}
}