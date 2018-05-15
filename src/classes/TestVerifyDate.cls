@isTest
public class TestVerifyDate {
    @isTest static void testCheckDates()
    {
        Date D1=system.today();
        Date D2=system.today()+20;
        date D=VerifyDate.CheckDates(D1,D2);
        
    }
     @isTest static void testCheckDates1()
    {
        Date D1=system.today();
        Date D2=system.today()-20;
        date D=VerifyDate.CheckDates(D1,D2);
        
    }
     @isTest static void testCheckDates2()
    {
        Date D1=system.today();
        Date D2=system.today()+60;        
        date D=VerifyDate.CheckDates(D1,D2);
        
    }
  
}