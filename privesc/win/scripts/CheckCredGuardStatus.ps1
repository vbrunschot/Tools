# Checks whether Credential Guard is running or not. If it's enabled dumping LSASS won't be useful for NTLM hashes.
# Note: If it's disabled it wont give results.

$DevGuard = Get-CimInstance –ClassName Win32_DeviceGuard –Namespace root\Microsoft\Windows\DeviceGuard
if ($DevGuard.SecurityServicesConfigured -contains 1) {"Credential Guard configured"}
if ($DevGuard.SecurityServicesRunning -contains 1) {"Credential Guard running"}