global class UpdateWFHSheet implements Schedulable {
    global void execute(SchedulableContext sc) {
        updateUserDaysInOffice();
    }

    private void updateUserDaysInOffice() {
        String profileId = 'insert ID here'; 

        List<User> usersToUpdate = [
            SELECT Id, FirstName, 
                DaysInOfficew2__c, DaysInOffice2w2__c, DaysInOffice3w2__c, 
                DaysInOffice4w2__c, DaysInOffice5w2__c,
                DaysInOffice__c, DaysInOffice2__c, DaysInOffice3__c, 
                DaysInOffice4__c, DaysInOffice5__c
            FROM User 
            WHERE IsActive = true AND ProfileId = :profileId
        ];

        List<User> updatedUsers = new List<User>();


        for (User u : usersToUpdate) {

            u.DaysInOffice__c = u.DaysInOfficew2__c;
            u.DaysInOffice2__c = u.DaysInOffice2w2__c;
            u.DaysInOffice3__c = u.DaysInOffice3w2__c;
            u.DaysInOffice4__c = u.DaysInOffice4w2__c;
            u.DaysInOffice5__c = u.DaysInOffice5w2__c;
            
            updatedUsers.add(u);
        }

        if (!updatedUsers.isEmpty()) {
            update updatedUsers;
        }
    }
}
