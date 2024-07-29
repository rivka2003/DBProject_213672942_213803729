
[General]
Version=1

[Preferences]
Username=
Password=2232
Database=
DateFormat=
CommitCount=0
CommitDelay=0
InitScript=

[Table]
Owner=C##RIVKA
Name=CLASS_
Count=20

[Record]
Name=CLASS_ID
Type=NUMBER
Size=
Data=Sequence(1,1,20)
Master=

[Record]
Name=GRADE
Type=NUMBER
Size=
Data=Random(1,8)
Master=

[Record]
Name=TEACHER_GUARD_ID
Type=NUMBER
Size=
Data=List(select teacher_guard_id from teacher_guard)
Master=

[Record]
Name=ROOM_ID
Type=NUMBER
Size=
Data=List(select room_id from room)
Master=

