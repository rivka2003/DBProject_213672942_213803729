
[General]
Version=1

[Preferences]
Username=
Password=2187
Database=
DateFormat=
CommitCount=0
CommitDelay=0
InitScript=

[Table]
Owner=
Name=TRIP
Count=20

[Record]
Name=NAME
Type=VARCHAR2
Size=15
Data=FirstName
Master=

[Record]
Name=ID_TRIP
Type=NUMBER
Size=
Data=Sequence(1,1,400)
Master=

[Record]
Name=PRICE
Type=NUMBER
Size=
Data=Random(1000,4000)
Master=

[Record]
Name=ID_TRANSPORTATION
Type=NUMBER
Size=
Data=Sequence(1,1,400)
Master=

[Record]
Name=TRIP_DATE
Type=NUMBER
Size=
Data=Random(dd.mm.yyyy)
Master=

