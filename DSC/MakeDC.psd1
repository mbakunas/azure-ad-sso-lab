@{ 
    AllNodes = @( 
        @{ 
            Nodename = 'localhost'
            PSDscAllowDomainUser = $true
            PSDscAllowPlainTextPassword = $true
        }
    )

    NonNodeData = @{

        UserData = @'
UserName,Password,GivenName,Surname,DisplayName,Dept,JobTitle,Manager
Robert.Gilliam,LongPassw0rd!,Robert,Gilliam,Robert Gilliam,Accounting,Specialist,Theresa Long
Roger.Vasquez,LongPassw0rd!,Roger,Vasquez,Roger Vasquez,IT,Manager,Ruben Turcotte
Leon.Cook,LongPassw0rd!,Leon,Cook,Leon Cook,Marketing,Specialist,Dennis Eckert
Brian.Wu,LongPassw0rd!,Brian,Wu,Brian Wu,Operations,Specialist,Aretha Smith
James.Stinson,LongPassw0rd!,James,Stinson,James Stinson,Accounting,Manager,Harry Armstrong
Tony.Brown,LongPassw0rd!,Tony,Brown,Tony Brown,IT,Specialist,Roger Vasquez
Erica.McDonald,LongPassw0rd!,Erica,McDonald,Erica McDonald,Marketing,Specialist,Dennis Eckert
Aretha.Smith,LongPassw0rd!,Aretha,Smith,Aretha Smith,Operations,Manager,Mario Peters
Harry.Armstrong,LongPassw0rd!,Harry,Armstrong,Harry Armstrong,Accounting,Director,
Ashely.Paez,LongPassw0rd!,Ashely,Paez,Ashely Paez,IT,Manager,Ruben Turcotte
Edward.Curtis,LongPassw0rd!,Edward,Curtis,Edward Curtis,Marketing,Manager,Bert Bennett
Mario.Peters,LongPassw0rd!,Mario,Peters,Mario Peters,Operations,Director,
Bert.Andrews,LongPassw0rd!,Bert,Andrews,Bert Andrews,Accounting,Specialist,James Stinson
Ruben.Turcotte,LongPassw0rd!,Ruben,Turcotte,Ruben Turcotte,IT,Director,
Bert.Bennett,LongPassw0rd!,Bert,Bennett,Bert Bennett,Marketing,Director,
Alexander.Reading,LongPassw0rd!,Alexander,Reading,Alexander Reading,Operations,Manager,Mario Peters
Theresa.Long,LongPassw0rd!,Theresa,Long,Theresa Long,Accounting,Manager,Harry Armstrong
James.Morales,LongPassw0rd!,James,Morales,James Morales,IT,Specialist,Roger Vasquez
Marsha.Whipple,LongPassw0rd!,Marsha,Whipple,Marsha Whipple,Marketing,Specialist,Edward Curtis
Gregory.Hale,LongPassw0rd!,Gregory,Hale,Robert Redford,Operations,Specialist,Alexander Reading
Jamal.Scott,LongPassw0rd!,Jamal,Scott,Jamal Scott,Accounting,Specialist,James Stinson
Rachael.Hampton,LongPassw0rd!,Rachael,Hampton,Rachael Hampton,IT,Specialist,Ashely Paez
Dennis.Eckert,LongPassw0rd!,Dennis,Eckert,Dennis Eckert,Marketing,Manager,Bert Bennett
Raymond.Leiker,LongPassw0rd!,Raymond,Leiker,Raymond Leiker,Operations,Specialist,Alexander Reading
Mary.Caster,LongPassw0rd!,Mary,Caster,Mary Caster,Accounting,Specialist,Theresa Long
'@

        RootOUs = 'Users','Computers','Groups'
        Departments = 'Accounting','IT','Marketing','Operations'
    }
}