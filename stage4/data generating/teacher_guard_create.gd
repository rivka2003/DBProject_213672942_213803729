
[General]
Version=1

[Preferences]
Username=
Password=2205
Database=
DateFormat=
CommitCount=0
CommitDelay=0
InitScript=

[Table]
Owner=C##RIVKA
Name=TEACHER_GUARD
Count=20

[Record]
Name=TEACHER_GUARD_ID
Type=NUMBER
Size=
Data=Sequence(1,1,20)
Master=

[Record]
Name=LAST_NAME
Type=CHAR
Size=10
Data=FirstName
Master=

[Record]
Name=FIRST_NAME
Type=CHAR
Size=10
Data=LastName
Master=

[Record]
Name=BONUS
Type=NUMBER
Size=
Data=Random(1000,3000)
Master=

[Record]
Name=HOURLY_SALARY
Type=NUMBER
Size=
Data=Random(50,100)
Master=

[Record]
Name=NUMBER_PHONE
Type=NUMBER
Size=
Data=Random(50000,60000)
Master=

