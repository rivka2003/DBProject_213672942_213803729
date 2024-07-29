
[General]
Version=1

[Preferences]
Username=
Password=2259
Database=
DateFormat=
CommitCount=0
CommitDelay=0
InitScript=

[Table]
Owner=C##RIVKA
Name=STUDENT_TRAVELERS
Count=20

[Record]
Name=LAST_NAME
Type=VARCHAR2
Size=10
Data=LastName
Master=

[Record]
Name=BIRTH_DATE
Type=DATE
Size=10
Data=Random(dd-mm-yyyy)
Master=

[Record]
Name=PHONE
Type=NUMBER
Size=10
Data=Random(1000000000,9999999999)
Master=

[Record]
Name=FATHERNAME
Type=VARCHAR2
Size=10
Data=FirstName
Master=

[Record]
Name=MOTHERNAME
Type=VARCHAR2
Size=10
Data=FirstName
Master=

[Record]
Name=FIRST_NAME
Type=VARCHAR2
Size=10
Data=FirstName
Master=

[Record]
Name=STUDENT_TRAVELERS_ID
Type=NUMBER
Size=10
Data=Sequence(1,1,20)
Master=

[Record]
Name=CLASS_ID
Type=NUMBER
Size=20
Data=List(select class_id from class_)
Master=

