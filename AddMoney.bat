@cls
@set /P budget="Amount to add to existing budget? "
@set /P job="Job: "
@set /P oldbudget=<Wallet
@set /A finalbudget = %budget% + %oldbudget%

@echo %finalbudget% > Wallet
@echo ---- >> logs/Added.log
@echo Added %budget% on %DATE% [%job%] >> logs/Added.log

@echo ---- >> logs/All.log
@echo Added %budget% on %DATE% [%job%] >> logs/All.log

@echo [*] Added %budget% on %DATE% at %TIME%
@TIMEOUT /T 10

