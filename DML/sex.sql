INSERT INTO sex (id, name, created_at, updated_at)
SELECT 1, '牡', CURDATE(), CURDATE()
UNION ALL SELECT 2, '牝', CURDATE(), CURDATE()
UNION ALL SELECT 3, 'セン', CURDATE(), CURDATE();
