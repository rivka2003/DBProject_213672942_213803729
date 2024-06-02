
[General]
Version=1

[Preferences]
Username=
Password=2020
Database=
DateFormat=
CommitCount=0
CommitDelay=0
InitScript=

[Table]
Owner=
Name=GUARD
Count=400

[Record]
Name=NAME
Type=VARCHAR2
Size=15
Data=FirstName
Master=

[Record]
Name=ID_GUARD
Type=NUMBER
Size=
Data=Sequence(1, 1, 400)
Master=

[Record]
Name=NUMBER_PHONE
Type=VARCHAR2
Size=15
Data=SQL(SELECT '05' || LPAD(TRUNC(DBMS_RANDOM.VALUE(100000, 999999)), 5, '0') FROM DUAL)
Master=

