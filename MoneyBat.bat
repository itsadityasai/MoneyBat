@cls
@set /P spent="Spent? "
@set /P purpose="Purpose? "
@set /P budget=<budget.MoneyBat
@set /A remaining = %budget% - %spent%
@echo %remaining% > budget.MoneyBat
@if %remaining% lss 0 @echo [!] Overspent

@echo ---- >> MoneyBat.log
@echo Date: %DATE% >> MoneyBat.log
@echo Budget: %budget% >> MoneyBat.log
@echo Spent: %spent% >> MoneyBat.log
@echo For: %purpose% >> MoneyBat.log
@if %remaining% lss 0 (
	@echo Remaining: %remaining% [Overspent] >> MoneyBat.log
) else (
	@echo Remaining: %remaining% >> MoneyBat.log
)

@echo [*] Logs updated
@TIMEOUT /T 10

