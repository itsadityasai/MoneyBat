@cls
@set /P rec="Amnt returned: "
@set /P inwallet=<Wallet
@set /P from="By: "
@set /A curwallet = %inwallet% + %rec%

@echo %curwallet% > Wallet
@echo ---- >> logs/Lent.log
@echo %from% returned %rec% on %DATE% >> logs/Lent.log

@echo ---- >> logs/All.log
@echo %from% returned %rec% on %DATE% >> logs/All.log

@echo [*] Done
@TIMEOUT /T 10

