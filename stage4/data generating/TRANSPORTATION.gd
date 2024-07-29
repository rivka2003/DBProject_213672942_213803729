
[General]
Version=1

[Preferences]
Username=
Password=2872
Database=
DateFormat=
CommitCount=0
CommitDelay=0
InitScript=

[Table]
Owner=
Name=TRANSPORTATION
Count=20

[Record]
Name=NUMBER_OF_PASSENGERS
Type=NUMBER
Size=
Data=Random(20,50)
Master=

[Record]
Name=DRIVER
Type=VARCHAR2
Size=
Data=FirstName
Master=

[Record]
Name=ID_TRANSPORTATION
Type=NUMBER
Size=
Data=Sequence(1,1,20)
Master=

[Record]
Name=DURATION_TIME
Type=DATE
Size=
Data=Random(dd-mm-yyyy)
Master=

