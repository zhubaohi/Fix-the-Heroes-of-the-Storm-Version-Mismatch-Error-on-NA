#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

if not A_IsAdmin
	Run *RunAs "%A_ScriptFullPath%"  ; Run this script as Admin


home::ExitApp

^f9::
	RunWait netsh advfirewall firewall add rule name="001" dir=out action=block remoteip="52.185.211.133" ,,hide
	RunWait netsh advfirewall firewall add rule name="002" dir=out action=block remoteip="172.217.1.206" ,,hide
	RunWait netsh advfirewall firewall add rule name="003" dir=out action=block remoteip="172.253.63.97" ,,hide
	ToolTip, IP Blocked, 10, 10
	Sleep 3000
	Tooltip, , 0, 0

^f12::
	
	RunWait netsh advfirewall firewall delete rule name="001" ,,hide
	RunWait netsh advfirewall firewall delete rule name="002" ,,hide
	RunWait netsh advfirewall firewall delete rule name="003" ,,hide
	ToolTip, IP Unblocked, 10, 10
	Sleep 3000
	Tooltip, , 0, 0
