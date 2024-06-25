
[General]
Version=1

[Preferences]
Username=
Password=2592
Database=
DateFormat=
CommitCount=100
CommitDelay=0
InitScript=

[Table]
Owner=C##RIVKA
Name=TRAVELERS
Count=100

[Record]
Name=NAME
Type=VARCHAR2
Size=15
Data=FirstName
Master=

[Record]
Name=YEAR_OF_BIRTH
Type=NUMBER
Size=
Data=Random(2000,2022)
Master=

[Record]
Name=ID_TRAVELS
Type=NUMBER
Size=
Data=Sequence(500,1,600)
Master=

