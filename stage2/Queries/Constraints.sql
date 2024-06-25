-- ����� 1: ����� CHECK ����� trips ����� ������ ���� �-0
ALTER TABLE trip
ADD CONSTRAINT chk_price CHECK (price > 0);

-- ����� 2: ����� DEFAULT ����� transportation ����� ����� ���� ����� �������
ALTER TABLE transportation
MODIFY number_of_passengers DEFAULT 1;

-- ����� 3: ����� NOT NULL ����� travelers ����� ���� ����� �� ���� ����
ALTER TABLE travelers
MODIFY year_of_birth NOT NULL;
