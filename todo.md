 - Add DOTFILES environment variable to .mybash.
 - Add findup script that searches directory trees upwards rather than downwards
   like POSIX find.
 - Disable default MOTD.
 - Add unique MOTD.
   - Use figlet and lolcat.
 - Add system info script.
   - Use in MOTD.
 - Work on making install scripts more comprehensive.
 - Add 'ask-to-install' script that also handles configuring fallbacks if the
   user answers 'no'.
 - Configure Bash to dump history after every command, rather that at session
   end.
 - Create 'make-gpg-key' script similar to 'make-ssh-key'.
 - Make 'make-ssh-key' script more comprehensive.
 - Create generic command argument processor script.
 - Create a script that creates a changelog from 'git log'.
 - Merge 'feature/multi-env' branch into master.
 - Add usage notes and reset flag to 'whereami'.
 - Configure Windows Terminal color scheme to match Linux ANSI colors.
 - Create script that auto-adds items from ~/.ssh/config to Windows Terminal
   profiles section.
 - Remove GPG key section from .gitconfig, prompt user to configure it if it
   isn't already set up.
 - Implement all Bash/sh scripts in PowerShell.
 - Add script for converting between git SSH remote and HTTP remote.

