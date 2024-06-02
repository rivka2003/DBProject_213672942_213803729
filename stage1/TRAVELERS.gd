
[General]
Version=1

[Preferences]
Username=
Password=2185
Database=
DateFormat=
CommitCount=100
CommitDelay=0
InitScript=

[Table]
Owner=
Name=TRAVELERS
Count=400

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
Data=Sequence(1,1,400)
Master=

