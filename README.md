# MoneyBat

----


MoneyBat is a set of batch scripts that help you manage your money quickly and efficiently. 


----

<h2> Features </h2>

- Logs date of spending automatically
- Allows you to keep track of amount owed, spent, lent and earned.
- Automatically calculates remaining amounts
- Doesn't require access to any accounts, just 5 minutes of your time
- Fast & Easy to use
- Logs are neat and easy to understand
- Easy Update & Reset
- All files are stored locally so information is totally private
- Works on any windows system that supports batch (.bat) scripts and will prolly work on Linux and Mac too with Wine
- Portable
- Automatic budget re-calculation on spending, lending, borrowing and recieving

---

## Quick guide 
### Scripts 

| Name | Function |
|------|----------|
| Setup.bat | Run this first to get MoneyBat up and running! |
|Reset.bat | Something went wrong? Start from scratch. |
| Spent.bat |  Logs your spendings | 
| Lent.bat | Logs the money you've lent to people| 
| Owed.bat |  Keeps track of how much money you owe people| 
| AddMoney.bat |  Add money to your budget.| 
| Returned.bat | Logs the return of previously lent money in Lent.log | 

### Logs 

| Name | Data |
|------|-----|
| Spent.log |  A log of all your spendings | 
| Lent.log | Log of lent money & returned money | 
| Owed.log | Log of owed money| 
| Added.log|  Log of added money| 
| All.log |  Log of everything| 
 
### Other Files 

| Name | Data |
|----|----|
| README.md | Somewhat an instruction booklet, contains details about the project. You're reading it rn. | 
| .gitignore |  Files to be ignored while pushing git updates.. Used to prevent upload of confidential files | 
| .git/ |  Present if you cloned the repository. Used by [git](https://git-scm.com/) to manage commits, push and pull code, etc.| 
| Wallet |  Mostly so that MoneyBat can keep track of your budget. Your remaining budget is logged in Spent.log anyway. This stores your balance. | 

-----

<h2> Notes </h2>

- To update MoneyBat's code, run 'git pull'. Your budget and logs will NOT be reset and you needn't run Setup.bat again. If you don't have git you can download the zip file and transfer logs/ & Wallet to the new folder.
- I personally prefer to just run `type Wallet` to see what balance I have - you may prefer it too


----
 
## License

Usage is governed by [this license](/LICENSE)



