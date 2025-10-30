-- 1. How many users have 'travel' in their bio?
SELECT COUNT(*) FROM "users" WHERE bio LIKE '%travel%';
-- Answer: 2

-- 2. How many posts were created between May 1st and May 10th, 2023?
SELECT COUNT(*)
FROM "posts"
WHERE created_at
BETWEEN '2023-05-01' AND '2023-05-10';
-- Answer: 1

-- 3. What user has the most comments? (return the user_id)
SELECT user_id
FROM "comments"
GROUP BY user_id
ORDER BY COUNT(*) DESC
LIMIT 1;
-- Answer: 2

-- 4. How many users have usernames that end with 'er'?
SELECT username
FROM users
WHERE "username" LIKE '%er';
-- Answer: 2

-- 5. What post has the most comments? (return the post_id)
SELECT post_id
FROM "comments"
GROUP BY post_id
ORDER BY COUNT(*) DESC
LIMIT 1;
-- Answer: post_id 1

-- 6. How many different user IDs have posted content?
SELECT user_id, COUNT(*) AS user_id_count
FROM "posts";
-- Answer: 50


-- 7. What user has the most people following them? (return the user_id
SELECT followed_id
FROM "following"
GROUP BY followed_id
ORDER BY COUNT(*) DESC
LIMIT 1;

-- 8. From users who joined in February 2023, how many have usernames containing 'john'?
SELECT username, created_at
FROM users
WHERE created_at BETWEEN '2023-02-10' AND '2023-02-28'
    AND username LIKE '%john%';
-- Answer: 0

-- 9. From users who joined in March 2023, how many have usernames containing 'mar'?
SELECT COUNT(*) FROM (
    SELECT username FROM users
    WHERE created_at BETWEEN '2023-03-01' AND '2023-03-31'
        AND username LIKE '%mar%'
) AS march_users_with_mar;
-- Answer: 0

-- 10. What post has the most reactions? (return the post_id)
SELECT post_id
FROM reactions
GROUP BY post_id
ORDER BY COUNT(*) DESC
LIMIT 1;
-- Answer: post_id 1


