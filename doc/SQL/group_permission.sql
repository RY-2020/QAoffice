PRAGMA foreign_keys=OFF;
BEGIN TRANSACTION;
CREATE TABLE IF NOT EXISTS "auth_group_permissions" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "group_id" integer NOT NULL REFERENCES "auth_group" ("id") DEFERRABLE INITIALLY DEFERRED, "permission_id" integer NOT NULL REFERENCES "auth_permission" ("id") DEFERRABLE INITIALLY DEFERRED);
INSERT INTO auth_group_permissions VALUES(1,1,37);
INSERT INTO auth_group_permissions VALUES(2,1,38);
INSERT INTO auth_group_permissions VALUES(3,1,39);
INSERT INTO auth_group_permissions VALUES(4,1,40);
INSERT INTO auth_group_permissions VALUES(5,1,17);
INSERT INTO auth_group_permissions VALUES(6,1,18);
INSERT INTO auth_group_permissions VALUES(7,1,19);
INSERT INTO auth_group_permissions VALUES(8,1,20);
INSERT INTO auth_group_permissions VALUES(9,2,37);
INSERT INTO auth_group_permissions VALUES(10,2,38);
INSERT INTO auth_group_permissions VALUES(11,2,39);
INSERT INTO auth_group_permissions VALUES(12,2,40);
INSERT INTO auth_group_permissions VALUES(13,2,41);
INSERT INTO auth_group_permissions VALUES(14,2,42);
INSERT INTO auth_group_permissions VALUES(15,2,43);
INSERT INTO auth_group_permissions VALUES(16,2,44);
INSERT INTO auth_group_permissions VALUES(17,2,17);
INSERT INTO auth_group_permissions VALUES(18,2,18);
INSERT INTO auth_group_permissions VALUES(19,2,19);
INSERT INTO auth_group_permissions VALUES(20,2,20);
INSERT INTO auth_group_permissions VALUES(21,3,37);
INSERT INTO auth_group_permissions VALUES(22,3,38);
INSERT INTO auth_group_permissions VALUES(23,3,39);
INSERT INTO auth_group_permissions VALUES(24,3,40);
INSERT INTO auth_group_permissions VALUES(25,3,17);
INSERT INTO auth_group_permissions VALUES(26,3,18);
INSERT INTO auth_group_permissions VALUES(27,3,19);
INSERT INTO auth_group_permissions VALUES(28,3,20);
CREATE UNIQUE INDEX "auth_group_permissions_group_id_permission_id_0cd325b0_uniq" ON "auth_group_permissions" ("group_id", "permission_id");
CREATE INDEX "auth_group_permissions_group_id_b120cbf9" ON "auth_group_permissions" ("group_id");
CREATE INDEX "auth_group_permissions_permission_id_84c5c92e" ON "auth_group_permissions" ("permission_id");
COMMIT;
