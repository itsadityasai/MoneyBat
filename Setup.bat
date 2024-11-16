@cls
@set /P budget="Budget? "
@echo %budget% > budget.MoneyBat
@echo Setup is done.. You can safely exit this window. DO NOT RUN SETUP AGAIN AS IT WILL RESET YOUR BUDGET. If you ever feel the need to reset moneybat completely, just run Reset.bat, and all variables will be set to default values.
@TIMEOUT /T 60
@exit