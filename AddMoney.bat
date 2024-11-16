@cls
@set /P budget="Amount to add to existing budget? "
@set /P oldbudget=<budget.MoneyBat
@set /A finalbudget = %budget% + %oldbudget%
@echo %finalbudget% > budget.MoneyBat
@echo ---- >> MoneyBat.log
@echo Added %budget% on %DATE% >> MoneyBat.log
echo [*] Added %budget% on %DATE% at %TIME%
TIMEOUT /T 10

