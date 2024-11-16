@cls
@set /P amount="Amount lent: "
@set /P to="Lent to: "
@set /P purpose="For: "
@set /P budget=<budget.MoneyBat
@set /A remaining = %budget% - %amount%
@echo %remaining% > budget.MoneyBat
@if %remaining% lss 0 (@echo [!] No money left)

@echo ---- >> lent.log
@echo Date: %DATE% >> lent.log
@echo Budget: %budget% >> lent.log
@echo Lent: %amount% >> lent.log
@echo For: %purpose% >> lent.log

@if %remaining% lss 0 (
        @echo Remaining: %remaining% [Lent too much] >> lent.log
) else (
        @echo Remaining: %remaining% >> lent.log
)

@echo [*] Logs updated
@TIMEOUT /T 10
