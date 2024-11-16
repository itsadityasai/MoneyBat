@cls
@set /P choice="THIS WILL DELETE ALL MoneyBat DATA! DO YOU WISH TO CONTINUE? (y/n) "
@if %choice% == y (
@echo [*] Removing logs..
@rmdir logs /s /q
@echo [*] Removing wallet..
@del Wallet
@echo Done.. Run Setup.bat to reconfigure MoneyBat
@TIMEOUT /T 7
) else (
@echo Exiting.. No changes made
@TIMEOUT /T 7
)
