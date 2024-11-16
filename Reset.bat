@cls
@set /P choice="THIS WILL DELETE ALL MoneyBat DATA! DO YOU WISH TO CONTINUE? (y/n) "
@if %choice% == y (
@rmdir logs /s /q
@del Wallet
@echo Done.. Run Setup.bat to reconfigure MoneyBat
@TIMEOUT /T 7
) else (
@echo Exiting..
@TIMEOUT /T 7
)
