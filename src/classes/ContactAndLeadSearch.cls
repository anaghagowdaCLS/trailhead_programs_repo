public class ContactAndLeadSearch {
    public static List<List< SObject>> searchContactsAndLeads(String str){
        List<List< SObject>> strlist = [FIND :str IN NAME FIELDS 
                   RETURNING Lead(Name),Contact(FirstName,LastName)];
            return strlist;
    }
}