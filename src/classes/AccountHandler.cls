public class AccountHandler {
    public static Account insertNewAccount(String AccountName){
        try{
        	Account acc=new Account();
            acc.Name=Accountname;
        	insert acc;
            return acc;
   		
		} catch (DmlException e) {
   			 System.debug('A DML exception has occurred: ' +
                e.getMessage());
            return null;
		}
        
        
    }
}