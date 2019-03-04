a=WScript.Arguments(0)
t=CreateObject("Scripting.FileSystemObject").getextensionname(a)
if t="lua" or t="txt" or t="conf" or t="md" then
	f=CreateObject("Scripting.FileSystemObject").OpenTextFile(a,1).readall
	f2=""
	for each l in split(f,chr(10))
		f2=f2 & l & vbnewline
	next
	CreateObject("Scripting.FileSystemObject").CreateTextFile(a).writeline(f2)
	CreateObject("WScript.Shell").run"notepad.exe " & a,1,0
end if





