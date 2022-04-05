INSERT INTO coursetypes (id, name, created_at, updated_at)
SELECT 1, '芝', CURDATE(), CURDATE()
UNION ALL SELECT 2, 'ダート', CURDATE(), CURDATE()
UNION ALL SELECT 3, '障害', CURDATE(), CURDATE();
