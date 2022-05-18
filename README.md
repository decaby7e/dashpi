# Dashpi

Display graphical apps on a Raspberry Pi Zero without
a display manager.

## Breakdown

ansible/ - Ansible role and playbook for installation.
media/   - Location to store pictures/videos.
scripts/ - Scripts that will change screen contents.

xinitrc.sh - Xorg server entrypoint. Gives dashpi (basically) full control of display.
start.sh   - Entrypoint for dashpi. Runs from cronjob.
lib.sh     - Library functions/variables for use in scripts run in the dashpi environment
