# Created by Trevor Sears <trevor@trevorsears.com>.
# Last modified: 2023/04/28

$dotfilesPath = Resolve-Path "${PSScriptRoot}\.."

function EditProfile {
	
	vim $myprofile
	
}

function ReShell {
	
	. $profile
	
}

function GetUnixCWD {
	
	$result = $(Get-Location).Path
	
	$cwdQualifier = $(Split-Path -Path $result -Qualifier)
	$isCWDOnHomeDrive = $result.StartsWith($env:HOMEDRIVE)
	$result = $(Split-Path -Path $result -NoQualifier)
	
	$homePathPattern = $([RegEx]::Escape($env:HOMEPATH))
	
	$result = $($result -replace $homePathPattern, "~")
	
	if (!$isCWDOnHomeDrive) {
		
		$result = "$result (on )"
		
	}
	
	return $result
	
}

function Prompt {
	
	# TODO -- Rewrite Write-Host calls with splat syntax.
	
	$wasLastCommandSuccessful = $?

	if ($wasLastCommandSuccessful) {
		$checkmark = $([char] 0x2713)
		Write-Host $checkmark -NoNewline -ForegroundColor Green
	} else {
		$xmark = "X"
		Write-Host $xmark -NoNewline -ForegroundColor Red
	}
	
	Write-Host " " -NoNewline
	
	Write-Host $env:UserName -NoNewline -ForegroundColor Green
	
	Write-Host "@" -NoNewline -ForegroundColor Gray
	
	Write-Host $(hostname) -NoNewline -ForegroundColor Green
	
	Write-Host ":" -NoNewline -ForegroundColor Gray
	
	Write-Host $(GetUnixCWD) -NoNewline -ForegroundColor Blue
	
	Write-Host ">" -NoNewline

	return " "
	
}

Set-Variable -Name "dotfiles"  -Value $dotfilesPath  -Scope Global
Set-Variable -Name "myprofile" -Value $PSCommandPath -Scope Global

