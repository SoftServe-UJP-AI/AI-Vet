CREATE SCHEMA ai_vet CHARACTER SET utf8 ;
USE ai_vet;

CREATE TABLE IF NOT EXISTS ai_vet.message (
 message_text VARCHAR(255) NULL)
ENGINE = InnoDB;



START TRANSACTION;
USE ai_vet;
INSERT INTO ai_vet.message(message_text) VALUES ('Hello world!');
COMMIT;
