ALTER TABLE races ADD FULLTEXT KEY (name) WITH PARSER ngram;
CREATE FULLTEXT INDEX `name_fulltext_idx` ON `races` (`name`) WITH PARSER ngram;
