# Created by Trevor Sears <trevor@trevorsears.com>.
# Last modified: 2023/04/28

$dotfiles_profile_file_name = "Microsoft.PowerShell_profile.ps1"
$dotfiles_profile_reference = "& $PSScriptRoot\$dotfiles_profile_file_name"

# If the user's profile already exists:
if (Test-Path $profile -PathType Leaf) {
	
	"Profile already exists!"

# If the user's profile does NOT yet exist:
} else {
	
	New-Item $profile -Type File
}

