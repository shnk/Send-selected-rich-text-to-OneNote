/*

----------------------------------------------------------------

Send selected rich text to OneNote (Silently) from anywhere
Hot Key windows + A

----------------------------------------------------------------

This is my first post to this forum, and this is my first really helpful script to do something. I hope your suggestions will make it better.

I have not find any alternative to what this script can do, if you have something similar in knowledge please let me know.

*/


<#a::  ; windows+a
;AutoTrim Off  ; Retain any leading and trailing whitespace on the clipboard.
ClipSaved = %ClipboardAll%
Clipboard =  ; Must start off blank for detection to work.
Send ^c
ClipWait 1
if ErrorLevel  ; ClipWait timed out.
    return
Runwait, "C:\Program Files\Microsoft Office\Office15\ONENOTE.EXE" /sidenote
sleep 100
send ^v
send !{F4}

;or use this to line to save data in current document
;it isn't working find out the reason
;Runwait, "C:\Program Files\Microsoft Office\Office15\ONENOTE.EXE" /paste

Sleep 200
Clipboard := ClipSaved
;restore the previous data of clipboard
ClipSaved =
;empty temporary variable
return

/*To do list
modify this code to append name of pdf file from which text is copied
*/
