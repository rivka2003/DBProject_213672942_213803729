
[General]
Version=1

[Preferences]
Username=
Password=2506
Database=
DateFormat=
CommitCount=0
CommitDelay=0
InitScript=

[Table]
Owner=C##RIVKA
Name=ROOM
Count=20

[Record]
Name=ROOM_ID
Type=NUMBER
Size=
Data=Sequence(1,1,20)
Master=

[Record]
Name=MAX_CAPACITY
Type=NUMBER
Size=
Data=Random(100,200)
Master=

[Record]
Name=IS_LAB
Type=VARCHAR2
Size=
Data='yes'
Master=

[Record]
Name=LAST_MAINTENANCE_CHECK
Type=VARCHAR2
Size=
Data='yes'
Master=

