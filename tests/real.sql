CREATE TABLE foo (x REAL);
INSERT INTO foo (x) VALUES (123);
SELECT CAST(x AS SMALLINT) FROM foo;
-- msg: CREATE TABLE 1
-- msg: INSERT 1
-- COL1: 123

CREATE TABLE foo (x REAL);
INSERT INTO foo (x) VALUES (123456);
SELECT CAST(x AS SMALLINT) FROM foo;
-- msg: CREATE TABLE 1
-- msg: INSERT 1
-- error 22003: numeric value out of range

CREATE TABLE foo (x REAL);
INSERT INTO foo (x) VALUES (123);
SELECT CAST(x AS INTEGER) FROM foo;
-- msg: CREATE TABLE 1
-- msg: INSERT 1
-- COL1: 123

CREATE TABLE foo (x REAL);
INSERT INTO foo (x) VALUES (12345678910);
SELECT CAST(x AS INTEGER) FROM foo;
-- msg: CREATE TABLE 1
-- msg: INSERT 1
-- error 22003: numeric value out of range

CREATE TABLE foo (x REAL);
INSERT INTO foo (x) VALUES (123);
SELECT CAST(x AS BIGINT) FROM foo;
-- msg: CREATE TABLE 1
-- msg: INSERT 1
-- COL1: 123

CREATE TABLE foo (x REAL);
INSERT INTO foo (x) VALUES (123);
SELECT CAST(x AS REAL) FROM foo;
-- msg: CREATE TABLE 1
-- msg: INSERT 1
-- COL1: 123

CREATE TABLE foo (x REAL);
INSERT INTO foo (x) VALUES (123);
SELECT CAST(x AS DOUBLE PRECISION) FROM foo;
-- msg: CREATE TABLE 1
-- msg: INSERT 1
-- COL1: 123
