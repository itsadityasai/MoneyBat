@cls
@set /P spent="Spent? "
@set /P purpose="Purpose? "
@set /P budget=<Wallet
@set /A remaining = %budget% - %spent%
@echo %remaining% > Wallet
@if %remaining% lss 0 @echo [!] Overspent

@echo ---- >> logs/Spent.log
@echo Date: %DATE% >> logs/Spent.log
@echo Budget: %budget% >> logs/Spent.log
@echo Spent: %spent% >> logs/Spent.log
@echo For: %purpose% >> logs/Spent.log
@if %remaining% lss 0 (
	@echo Remaining: %remaining% [Overspent] >> logs/Spent.log
) else (
	@echo Remaining: %remaining% >> logs/Spent.log
)

@echo ---- >> logs/All.log
@echo Date: %DATE% >> logs/All.log
@echo Budget: %budget% >> logs/All.log
@echo Spent: %spent% >> logs/All.log
@echo For: %purpose% >> logs/All.log
@if %remaining% lss 0 (
	@echo Remaining: %remaining% [Overspent] >> logs/All.log
) else (
	@echo Remaining: %remaining% >> logs/All.log
)


@echo [*] Logs updated
@TIMEOUT /T 10

