@isTest
private class UpdateWFHSheetTest {
    @testSetup
    static void setupTestData() {
        Profile testProfile = [SELECT Id FROM Profile WHERE Name = 'Standard User' LIMIT 1];

        User user1 = new User(
            FirstName = 'Test',
            LastName = 'User1',
            Username = 'testuser1@YourTestEmail.co.uk',
            Email = 'testuser1@YourTestEmail.co.uk',
            Alias = 'tuser1',
            TimeZoneSidKey = 'America/Los_Angeles',
            LocaleSidKey = 'en_US',
            EmailEncodingKey = 'UTF-8',
            ProfileId = testProfile.Id,
            LanguageLocaleKey = 'en_US',
            IsActive = true,
            DaysInOffice__c = 'Office',
            DaysInOffice2__c = 'WFH',
            DaysInOffice3__c = 'Office',
            DaysInOffice4__c = 'WFH',
            DaysInOffice5__c = 'Office'
        );
        
        User user2 = new User(
            FirstName = 'Test',
            LastName = 'User2',
            Username = 'testuser2@YourTestEmail.co.uk',
            Email = 'testuser2@YourTestEmail.co.uk',
            Alias = 'tuser2',
            TimeZoneSidKey = 'America/Los_Angeles',
            LocaleSidKey = 'en_US',
            EmailEncodingKey = 'UTF-8',
            ProfileId = testProfile.Id,
            LanguageLocaleKey = 'en_US',
            IsActive = true,
            DaysInOffice__c = 'WFH',
            DaysInOffice2__c = 'Office',
            DaysInOffice3__c = 'WFH',
            DaysInOffice4__c = 'Office',
            DaysInOffice5__c = 'WFH'
        );

        User user3 = new User(
            FirstName = 'Test',
            LastName = 'User3',
            Username = 'testuser3@YourTestEmail.co.uk',
            Email = 'testuser3@YourTestEmail.co.uk',
            Alias = 'tuser3',
            TimeZoneSidKey = 'America/Los_Angeles',
            LocaleSidKey = 'en_US',
            EmailEncodingKey = 'UTF-8',
            ProfileId = testProfile.Id,
            LanguageLocaleKey = 'en_US',
            IsActive = true,
            DaysInOffice__c = 'Office',
            DaysInOffice2__c = 'WFH',
            DaysInOffice3__c = 'Office',
            DaysInOffice4__c = 'WFH',
            DaysInOffice5__c = 'Office'
        );

        insert new List<User>{user1, user2, user3};
    }

    @isTest
    static void testUpdateWFHSheet() {
        Test.startTest();
        UpdateWFHSheet job = new UpdateWFHSheet();
        job.execute(null);
        Test.stopTest();

       
    }
}
