public class AccountUtils {
    public static List<Account>  accountsByState(String str){
        List<Account> acclist=[select Id, Name from Account where BillingState= :str];
        System.debug(acclist);
        return acclist;
    }
}