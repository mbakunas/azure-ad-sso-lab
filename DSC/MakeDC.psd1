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
Al.Pacino,Passw0rd!,Al,Pacino,Al Pacino,Accounting,Specialist,Nichole.Kidman
Brendan.Fraser,Passw0rd!,Brendan,Fraser,Brendan Fraser,IT,Manager,Kate.Beckinsale
Charlize.Theron,Passw0rd!,Charlize,Theron,Charlize Theron,Marketing,Specialist,Tom.Hanks
Christopher.Walken,Passw0rd!,Christopher,Walken,Christopher Walken,Operations,Specialist,Gary.Oldman
Clint.Eastwood,Passw0rd!,Clint,Eastwood,Clint Eastwood,Accounting,Manager,George.Clooney
Dennis.Quaid,Passw0rd!,Dennis,Quaid,Dennis Quaid,IT,Specialist,Brendan.Fraser
Famke.Janssen,Passw0rd!,Famke,Janssen,Famke Janssen,Marketing,Specialist,Tom.Hanks
Gary.Oldman,Passw0rd!,Gary,Oldman,Gary Oldman,Operations,Manager,Jessica.Alba
George.Clooney,Passw0rd!,George,Clooney,George Clooney,Accounting,Director,
Hugh.Grant,Passw0rd!,Hugh,Grant,Hugh Grant,IT,Manager,Kate.Beckinsale
Jeremy.Irons,Passw0rd!,Jeremy,Irons,Jeremy Irons,Marketing,Manager,Matt.Damon
Jessica.Alba,Passw0rd!,Jessica,Alba,Jessica Alba,Operations,Director,
Jude.Law,Passw0rd!,Jude,Law,Jude Law,Accounting,Specialist,Clint.Eastwood
Kate.Beckinsale,Passw0rd!,Kate,Beckinsale,Kate Beckinsale,IT,Director,
Matt.Damon,Passw0rd!,Matt,Damon,Matt Damon,Marketing,Director,
Matthey.McConaughey,Passw0rd!,Matthey,McConaughey,Matthey McConaughey,Operations,Manager,Jessica.Alba
Nichole.Kidman,Passw0rd!,Nichole,Kidman,Nichole Kidman,Accounting,Manager,George.Clooney
Peter.Ustinov,Passw0rd!,Peter,Ustinov,Peter Ustinov,IT,Specialist,Brendan.Fraser
Renee.Zellweger,Passw0rd!,Renee,Zellweger,Renee Zellweger,Marketing,Specialist,Jeremy.Irons
Robert.Redford,Passw0rd!,Robert,Redford,Robert Redford,Operations,Specialist,Matthey.McConaughey
Sam.Neill,Passw0rd!,Sam,Neill,Sam Neill,Accounting,Specialist,Clint.Eastwood
Sean.Young,Passw0rd!,Sean,Young,Sean Young,IT,Specialist,Hugh.Grant
Tom.Hanks,Passw0rd!,Tom,Hanks,Tom Hanks,Marketing,Manager,Matt.Damon
Vince.Vaughn,Passw0rd!,Vince,Vaughn,Vince Vaughn,Operations,Specialist,Matthey.McConaughey
Will.Smith,Passw0rd!,Will,Smith,Will Smith,Accounting,Specialist,Nichole.Kidman
'@

        RootOUs = 'Users','Computers','Groups'
        Departments = 'Accounting','IT','Marketing','Operations'
    }
}