@echo on
set /p testVar=Podaj numer stanowiska
net localgroup Uczniowie /add
set userNames=%testVar%_3BT_1 %testVar%_3BT_2 %testVar%_4BT_1 %testVar%_4BT_2 %testVar%_2B_2 %testVar%_4BTG_1 %testVar%_3ET_1 %testVar%_2BT_1 %testVar%_2BT_2 uczen   

for %%a in (%userNames%) do ( 
net user %%a witaj /logonpasswordchg:yes /expires:never
net localgroup Uczniowie %%a /add
)