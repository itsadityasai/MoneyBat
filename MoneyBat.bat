@cls
@set /P spent="Spent? "
@set /P purpose="Purpose? "
@set /P budget=<budget.MoneyBat
@set /A remaining = %budget% - %spent%
@echo %remaining% > budget.MoneyBat

@echo ---- >> MoneyBat.log
@echo Date: %DATE% >> MoneyBat.log
@echo Budget: %budget% >> MoneyBat.log
@echo Spent: %spent% >> MoneyBat.log
@echo For: %purpose% >> MoneyBat.log
@echo Remaining: %remaining% >> MoneyBat.log

@echo [*] Logs updated
@TIMEOUT /T 10

