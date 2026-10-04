-- sql snippets

SELECT email, COUNT(*) FROM users GROUP BY email HAVING COUNT(*) > 1;

SELECT pid, now() - query_start AS duration, query
FROM pg_stat_activity WHERE state <> 'idle' ORDER BY duration DESC;
