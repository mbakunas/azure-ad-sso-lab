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
UserName,GivenName,Surname,DisplayName,Dept,JobTitle,Manager
Robert.Gilliam,Robert,Gilliam,Robert Gilliam,Accounting,Specialist,Theresa Long
Roger.Vasquez,Roger,Vasquez,Roger Vasquez,IT,Manager,Ruben Turcotte
Leon.Cook,Leon,Cook,Leon Cook,Marketing,Specialist,Dennis Eckert
Brian.Wu,Brian,Wu,Brian Wu,Operations,Specialist,Aretha Smith
James.Stinson,James,Stinson,James Stinson,Accounting,Manager,Harry Armstrong
Tony.Brown,Tony,Brown,Tony Brown,IT,Specialist,Roger Vasquez
Erica.McDonald,Erica,McDonald,Erica McDonald,Marketing,Specialist,Dennis Eckert
Aretha.Smith,Aretha,Smith,Aretha Smith,Operations,Manager,Mario Peters
Harry.Armstrong,Harry,Armstrong,Harry Armstrong,Accounting,Director,
Ashely.Paez,Ashely,Paez,Ashely Paez,IT,Manager,Ruben Turcotte
Edward.Curtis,Edward,Curtis,Edward Curtis,Marketing,Manager,Bert Bennett
Mario.Peters,Mario,Peters,Mario Peters,Operations,Director,
Bert.Andrews,Bert,Andrews,Bert Andrews,Accounting,Specialist,James Stinson
Ruben.Turcotte,Ruben,Turcotte,Ruben Turcotte,IT,Director,
Bert.Bennett,Bert,Bennett,Bert Bennett,Marketing,Director,
Alexander.Reading,Alexander,Reading,Alexander Reading,Operations,Manager,Mario Peters
Theresa.Long,Theresa,Long,Theresa Long,Accounting,Manager,Harry Armstrong
James.Morales,James,Morales,James Morales,IT,Specialist,Roger Vasquez
Marsha.Whipple,Marsha,Whipple,Marsha Whipple,Marketing,Specialist,Edward Curtis
Gregory.Hale,Gregory,Hale,Robert Redford,Operations,Specialist,Alexander Reading
Jamal.Scott,Jamal,Scott,Jamal Scott,Accounting,Specialist,James Stinson
Rachael.Hampton,Rachael,Hampton,Rachael Hampton,IT,Specialist,Ashely Paez
Dennis.Eckert,Dennis,Eckert,Dennis Eckert,Marketing,Manager,Bert Bennett
Raymond.Leiker,Raymond,Leiker,Raymond Leiker,Operations,Specialist,Alexander Reading
Mary.Caster,Mary,Caster,Mary Caster,Accounting,Specialist,Theresa Long
'@

        RootOUs = 'Users','Computers','Groups'
        Departments = 'Accounting','IT','Marketing','Operations'
    }
}