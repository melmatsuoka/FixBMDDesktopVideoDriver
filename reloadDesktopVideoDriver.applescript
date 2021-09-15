set userName to do shell script "id -un"
set localPassword to text returned of (display dialog "Please Enter " & userName & "'s password to reload Desktop Video Setup driver:" default answer "" buttons {"Cancel", "OK"} default button "OK" cancel button "Cancel" giving up after 60 with title "Enter Admin Password" with hidden answer)
set result to do shell script "sudo kextutil /Library/Extensions/BlackmagicIO.kext" user name userName password localPassword with administrator privileges
if not result = "" then
	display dialog result buttons {"OK"} default button "OK" giving up after 60 with title "Command Results"
end if
