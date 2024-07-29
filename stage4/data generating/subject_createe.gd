
[General]
Version=1

[Preferences]
Username=
Password=2814
Database=
DateFormat=
CommitCount=0
CommitDelay=0
InitScript=

[Table]
Owner=C##RIVKA
Name=SUBJECT
Count=20

[Record]
Name=SUBJECT_ID
Type=NUMBER
Size=10
Data=Sequence(1,1,20)
Master=

[Record]
Name=SUBJECT_NAME
Type=Char(10)
Size=10
Data=LastName
Master=

[Record]
Name=MANDATORY
Type=NUMBER
Size=10
Data=Random(1,100)
Master=

