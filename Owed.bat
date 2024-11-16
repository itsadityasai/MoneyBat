@cls
@set /P borrowed="Amount borrowed: "
@set /P from="From: "
@set /P dueby="Due by: "
@set /P pur="Purpose: "
@set /P oldbudget=<Wallet
@set /A newbudget = %oldbudget% + %borrowed%
@echo %newbudget% > Wallet

@echo ---- >> logs/Owed.log
@echo Date: %DATE% >> logs/Owed.log
@echo Borrowed: %borrowed% >> logs/Owed.log
@echo From: %from% >> logs/Owed.log
@echo For: %pur% >> logs/Owed.log
@echo Due By: %dueby% >> logs/Owed.log
@echo Wallet: %newbudget% >> logs/Owed.log

@echo ---- >> logs/All.log
@echo Date: %DATE% >> logs/All.log
@echo Borrowed: %borrowed% >> logs/All.log
@echo From: %from% >> logs/All.log
@echo For: %pur% >> logs/All.log
@echo Due By: %dueby% >> logs/All.log
@echo Wallet: %newbudget% >> logs/All.log

@echo [*] Logs updated
@TIMEOUT /T 10