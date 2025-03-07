DECLARE @DatabaseName NVARCHAR(100);
SET @DatabaseName =  N'bizpro_clean'

DECLARE @Location NVARCHAR(400);
SET @Location = N'C:\projects\db\bizpro\' + @DatabaseName + '-'

DECLARE @BackupFileType NVARCHAR(100);
SET @BackupFileType = N'.bak'

-- Generate file name dynamically with today's date
DECLARE @BackupFileName NVARCHAR(100);
SET @BackupFileName = @Location + FORMAT(GETDATE(), 'yyyyMMdd') + @BackupFileType;

-- Construct and execute the dynamic backup command
DECLARE @SQL NVARCHAR(MAX);
SET @SQL = N'BACKUP DATABASE [' + @DatabaseName + '] TO DISK = ''' +
            @BackupFileName +
           ''' WITH NOFORMAT, NOINIT, NAME = '''+ @DatabaseName + ''', SKIP, NOREWIND, NOUNLOAD, STATS = 10';

EXEC sp_executesql @SQL;