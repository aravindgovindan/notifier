# notifier

Get a desktop notification after command line tasks.
Append 'noti' before you run a command and get a success/failure notification after the task is finished.

(WIP: Only available for Mac right now. Will add for Windows and Linux 
shortly)

### Add the directory containing ```noti.sh``` to your PATH 
Clone this repo or just copy the ```noti.sh``` file to your Mac. Then add the directory to your PATH variable in order to access it globally.

For example, if you have cloned this repo to your desktop, add the following line to the ```.bash_profile``` or ```.bashrc``` file in your home directory:
```
export PATH=$HOME/Desktop/notifier:$PATH
```

Try running the following from a new terminal tab:
```bash
sh noti.sh sleep 2
```
You should get a notification after 2 seconds.

### Create a permanent alias for 'sh noti.sh'
Now that you have added noti.sh to your PATH, you can use it for getting notifications after CLI tasks by appending 'sh noti.sh' before the command. 

To make things easier, you can create an alias so that you need only append 'noti' to get the notification.

Add the following line to the ```.bash_profile``` or ```.bashrc``` file:
```
alias noti=sh noti.sh
```

Test it out. Run the following command from a new terminal tab.
```bash
# get a sucess notification after 2 s
noti sleep 2
```

```bash
# get a failed notification
noti command_that_fails