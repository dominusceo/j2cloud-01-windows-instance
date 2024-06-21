#ps1_sysnative
net user opc passwordreq:no
cmd /C 'wmic UserAccount where Name="opc" set PasswordExpires=False'
#$opcUser = get-wmiobject win32_useraccount | Where-Object { $_.Name -match 'opc' }
#Set-LocalUser -name $opcUser -Password ([securestring]::new())
#Set-LocalUser -name "UserName" -Password ([securestring]::new()) 
#([adsi]("WinNT://"+$opcUser.caption).replace("\","/")).SetPassword("#Pa55_Word")
#$Secure_String_Pwd = ConvertTo-SecureString "1LoveOracle!!" -AsPlainText -Force
Set-Service -Name msiscsi -StartupType Automatic
Start-Service msiscsi