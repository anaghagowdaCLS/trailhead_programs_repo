public class RandomContactFactory {
    public static List<Contact> generateRandomContacts(Integer numOfCons, String LastNameGen){
         List<Contact> con= new List<Contact>();
        for(Integer i=0;i<numOfCons;i++){
             Contact c=new Contact(FirstName='Test '+i,LastName=LastNameGen);
             con.add(c);
        }
        System.debug(con);
		 return con;
    }
}