-- cleanup
-- switch
\c postgres;

-- Disconnect all users from the database (required to drop it)
REVOKE CONNECT ON DATABASE ipl_db FROM PUBLIC;
SELECT pg_terminate_backend(pg_stat_activity.pid)
FROM pg_stat_activity
WHERE pg_stat_activity.datname = 'ipl_db'
  AND pid <> pg_backend_pid();

-- Drop the database
DROP DATABASE IF EXISTS ipl_db;

-- Drop the user
DROP USER IF EXISTS himanshu;

