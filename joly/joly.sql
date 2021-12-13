DECLAIRE 
SUBTYPE name Is Char(20);
SUBTYPE message Is varchar2(100);
salutation name;
greatings message;

BEGIN

salutation := 'Reader';
greatings := 'welcome to the world of PL/SQL';
dbms_output.put_line('Lello'|| salutation || greatings);
END;
/