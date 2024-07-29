
[General]
Version=1

[Preferences]
Username=
Password=2470
Database=
DateFormat=
CommitCount=0
CommitDelay=0
InitScript=

[Table]
Owner=C##RIVKA
Name=DESTINATIONS
Count=20

[Record]
Name=NAME
Type=VARCHAR2
Size=10
Data=FirstName
Master=

[Record]
Name=ID_DESTINATIONS
Type=NUMBER
Size=10
Data=Sequence(1,1,20)
Master=

[Record]
Name=DESCRIPTION
Type=VARCHAR2
Size=10
Data='lets go'+Text(30, 4, 2)
Master=

