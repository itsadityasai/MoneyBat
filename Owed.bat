@cls
@set /P borrowed="Amount borrowed: "
@set /P from="From: "
@set /P dueby="Due by: "
@set /P pur="Purpose: "
@set /P oldbudget=<budget.MoneyBat
@set /A newbudget = %oldbudget% + %borrowed%
@echo %newbudget% > budget.MoneyBat

@echo ---- >> owed.log
@echo Date: %DATE% >> owed.log
@echo Borrowed: %borrowed% >> owed.log
@echo From: %from% >> owed.log
@echo For: %pur% >> owed.log
@echo Due By: %dueby% >> owed.log
@echo Wallet: %newbudget% >> owed.log

@echo [*] Logs updated
@TIMEOUT /T 10