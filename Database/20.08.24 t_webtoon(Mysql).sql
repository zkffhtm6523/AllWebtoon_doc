CREATE TABLE t_webtoon(
	w_no INT auto_increment PRIMARY KEY,
	w_platform INT NOT NULL,
	w_title VARCHAR(100) NOT NULL,
	w_genre VARCHAR(100) NOT NULL,
	w_storywriter VARCHAR(100) NOT NULL,
	w_artist VARCHAR(100) NOT NULL,
	w_story VARCHAR(1000) NOT NULL,
	w_thumbnail VARCHAR(1000) NOT NULL,
	w_link VARCHAR(1000) NOT null
);
-- 조회(데이터 전체) : t_webtoon
SELECT * FROM t_webtoon;

-- 삭제(데이터) : t_webtoon
DELETE FROM t_webtoon WHERE w_no = 1;

-- 삭제(테이블) : t_webtoon
DROP TABLE t_webtoon;

-- 삽입(데이터) : t_webtoon, w_no 제외
INSERT INTO t_webtoon
(w_platform, w_title, w_genre, w_storywriter, w_artist, w_story, w_thumbnail, w_link)
VALUES(1,'w','w','w','w','w','w');

-- 변경(시퀀스) : w_no 1부터 시작
ALTER TABLE t_webtoon AUTO_INCREMENT = 1;

-- 변경(컬럼 범위) : 썸네일 범위 증가
ALTER TABLE t_webtoon modify w_thumbnail VARCHAR(1000);

DESC t_webtoon;
SELECT * FROM t_webtoon WHERE w_title LIKE '%탑%';
SELECT * FROM t_webtoon WHERE w_platform = 1;
COMMIT;

-- 테스트 테이블
CREATE TABLE t_webtoon_test(
	w_no INT auto_increment PRIMARY KEY,
	w_platform INT NOT NULL,
	w_title VARCHAR(100) NOT NULL,
	w_genre VARCHAR(100) NOT NULL,
	w_storywriter VARCHAR(100) NOT NULL,
	w_artist VARCHAR(100) NOT NULL,
	w_story VARCHAR(1000) NOT NULL,
	w_thumbnail VARCHAR(1000) NOT NULL,
	w_link VARCHAR(1000) NOT null
);

-- 변경(시퀀스) : w_no 1부터 시작
ALTER TABLE t_webtoon_test AUTO_INCREMENT = 1;

INSERT INTO t_webtoon_test
(w_platform, w_title, w_genre, w_storywriter, w_artist, w_story, w_thumbnail, w_link)
VALUES(1,'w','w','w','w','w','w');

-- 조회(데이터 전체) : t_webtoon
SELECT * FROM t_webtoon_test;

-- 삭제(테이블) : t_webtoon
DROP TABLE t_webtoon_test;