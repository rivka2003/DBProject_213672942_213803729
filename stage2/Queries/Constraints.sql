-- אילוץ 1: הוספת CHECK לטבלת trips לוודא שהמחיר גדול מ-0
ALTER TABLE trip
ADD CONSTRAINT chk_price CHECK (price > 0);

-- אילוץ 2: הוספת DEFAULT לטבלת transportation לקבוע ברירת מחדל למספר הנוסעים
ALTER TABLE transportation
MODIFY number_of_passengers DEFAULT 1;

-- אילוץ 3: הוספת NOT NULL לטבלת travelers לוודא ששנת הלידה לא תהיה ריקה
ALTER TABLE travelers
MODIFY year_of_birth NOT NULL;
