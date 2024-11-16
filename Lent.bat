@cls
@set /P amount="Amount lent: "
@set /P to="Lent to: "
@set /P purpose="For: "
@set /P budget=<Wallet
@set /A remaining = %budget% - %amount%
@echo %remaining% > Wallet
@if %remaining% lss 0 (@echo [!] No money left)

@echo ---- >> logs/Lent.log
@echo Date: %DATE% >> logs/Lent.log
@echo Budget: %budget% >> logs/Lent.log
@echo Lent: %amount% >> logs/Lent.log
@echo For: %purpose% >> logs/Lent.log

@if %remaining% lss 0 (
        @echo Remaining: %remaining% [Lent too much] >> logs/Lent.log
) else (
        @echo Remaining: %remaining% >> logs/Lent.log
)

@echo ---- >> logs/All.log
@echo Date: %DATE% >> logs/All.log
@echo Budget: %budget% >> logs/All.log
@echo Lent: %amount% >> logs/All.log
@echo For: %purpose% >> logs/All.log

@if %remaining% lss 0 (
        @echo Remaining: %remaining% [Lent too much] >> logs/All.log
) else (
        @echo Remaining: %remaining% >> logs/All.log
)

@echo [*] Logs updated
@TIMEOUT /T 10
