## The reason for the bug:

- The reason for this bug is that the default KDE is set as the main desktop in the system. This means that when you install a new desktop, KDE remains the default desktop.
For example, other desktops such as xfcce do this by themselves, but this is not done in the kde desktop, and this is the reason for this bug.
## You can fix the bug with the following command:

```bash
sudo systemctl set-default (desktop name)
```

# For example:
-For example, to change the default desktop to xfce, run the following command:

```bash
sudo systemctl set-default xfce
```
## Here is another way to fix this bug
- 1_ Create a new text file named `.xinitrc` in the `~/.config` directory.

- 2_ Enter the following code in the `.xinitrc` file:
```
exec (desktop name)
```
- For example, to run the xfce desktop, enter the following code:
```
exec xfce
```
- 3_ Save the `.xinitrc` file.

- 4_ reboot the system.

# fix with script:
This Bash script allows you to easily switch the default desktop environment on a Linux system using `systemctl`. It prompts the user to choose from a list of predefined desktop environments or enter a custom one. The script then sets the selected desktop as the default for the system.

## installation & usage:
- install
```
git clone https://github.com/hesam-zahiri/kde_cruser_bug.git
```
- usage

```
cd kde_cruser_bug
```

- 1_ Make the script executable:

```bash
chmod +x kde_cruser_bug.sh
```

- 2_ Run the script:
```bash
./kde_cruser_bug.sh
```
- 3_ choose your desktop name

- If the desired desktop is not among them, select option 7, then write the name of the desktop you suspect.
