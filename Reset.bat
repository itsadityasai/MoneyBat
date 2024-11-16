@cls
@set /P choice="THIS WILL DELETE ALL MoneyBat DATA! DO YOU WISH TO CONTINUE? (y/n) "
@if %choice% == y (
@del MoneyBat.log
@echo 0 > budget.MoneyBat
@echo Done.. Run Setup.bat to reconfigure MoneyBat
@TIMEOUT /T 7
@exit
) else (
@echo Exiting..
@TIMEOUT /T 7
@exit 
)