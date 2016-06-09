USE [master]
GO
ALTER LOGIN [sa] WITH DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[us_english], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF
GO
USE [master]
GO
ALTER LOGIN [sa] WITH PASSWORD=N'12345'
GO
ALTER LOGIN [sa] ENABLE
GO

SELECT CASE SERVERPROPERTY('IsIntegratedSecurityOnly')   WHEN 1 THEN 'Windows Authentication'   WHEN 0 THEN 'Windows and SQL Server Authentication'    END as [Authentication Mode]  

USE [master]
GO
EXEC xp_instance_regwrite N'HKEY_LOCAL_MACHINE', N'Software\Microsoft\MSSQLServer\MSSQLServer', N'LoginMode', REG_DWORD, 2
GO