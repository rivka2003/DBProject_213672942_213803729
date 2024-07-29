
[General]
Version=1

[Preferences]
Username=
Password=2164
Database=
DateFormat=
CommitCount=0
CommitDelay=0
InitScript=

[Table]
Owner=C##RIVKA
Name=LESSON
Count=20

[Record]
Name=HOUR
Type=NUMBER
Size=
Data=Random(1,12)
Master=

[Record]
Name=LESSON_ID
Type=NUMBER
Size=
Data=Sequence(1,1,20)
Master=

[Record]
Name=LESSON_DAY
Type=VARCHAR2
Size=
Data=FirstName
Master=

[Record]
Name=CLASS_ID
Type=NUMBER
Size=
Data=List(select class_id from class_)
Master=

[Record]
Name=TEACHER_GUARD_ID
Type=NUMBER
Size=
Data=List(select teacher_guard_id from teacher_guard)
Master=

[Record]
Name=SUBJECT_ID
Type=NUMBER
Size=
Data=List(select subject_id from subject)
Master=

