public class DemoBatch implements Database.Batchable<SObject>{
    public Database.QueryLocator start(Database.BatchableContext bc){
        return Database.getQueryLocator('SELECT id from Account');
    }
    public void execute(Database.BatchableContext bc, List<Account> subListFromStartMethod){
        for(Account acc:subListFromStartMethod){
            acc.Name='Batch Updated '+acc.Name;
            
        }
        UPDATE subListFromStartMethod;
    }
    public void finish(Database.BatchableContext bc){
        system.debug('@@Batch job completed');
    }
}