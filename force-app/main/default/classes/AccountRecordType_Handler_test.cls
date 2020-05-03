@isTest
public class AccountRecordType_Handler_test {

    Private static testmethod void test1(){
        Account a = new account();
        a.name='test account';
        insert a;
        
        Contact c = new Contact();
        c.LastName='test contact';
        c.AccountId=a.Id;
        insert c; 
        
    }
    
}