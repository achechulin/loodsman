shfolder.dll
========

Для закрытия уязвимости CVE-2021-26414 исправление 
[KB5004442](https://support.microsoft.com/en-us/topic/kb5004442-manage-changes-for-windows-dcom-server-security-feature-bypass-cve-2021-26414-f1400b52-c141-43d2-941e-37ed901c769c)
повышает минимальнЫй уровень проверки подлинности
при удаленных вызовах DCOM до RPC_C_AUTHN_LEVEL_PKT_INTEGRITY.

Данный патч выполняет подмену CoInitializeSecurity для замены уровня
проверки подлинности dwAuthnLevel на RPC_C_AUTHN_LEVEL_PKT_INTEGRITY.
