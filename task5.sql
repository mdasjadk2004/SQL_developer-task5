--Use INNER, LEFT, RIGHT, FULL JOIN
SELECT p.post_id, p.content, u.username, u.full_name
FROM posts p
INNER JOIN users u
ON p.user_id = u.user_id;

SELECT p.post_id, p.content, u.username, u.full_name
FROM posts p
LEFT JOIN users u
ON p.user_id = u.user_id;

SELECT p.post_id, p.content, u.username, u.full_name
FROM posts p
RIGHT JOIN users u
ON p.user_id = u.user_id;

SELECT p.post_id, p.content, u.username, u.full_name
FROM posts p
FULL OUTER JOIN users u
ON p.user_id = u.user_id;

SELECT i.interaction_id, i.interaction_type, p.content, u.username
FROM interactions i
INNER JOIN posts p
ON i.post_id = p.post_id
INNER JOIN users u
ON i.user_id = u.user_id

--self join
SELECT 
    u1.username AS user_one,
    u2.username AS user_two,
    u1.followers_count,
    u2.followers_count
FROM users u1
JOIN users u2
    ON u1.followers_count = u2.followers_count
    AND u1.user_id = u2.user_id;





