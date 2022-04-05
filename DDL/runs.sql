CREATE TABLE runs
(
  id bigint(20) unsigned AUTO_INCREMENT PRIMARY KEY,
  horse_id bigint(20) unsigned NOT NULL,
  race_id bigint(20) unsigned NOT NULL,
  burden_weight float NOT NULL,
  jockey_id bigint(20) unsigned NOT NULL,
  created_at TIMESTAMP NOT NULL,
  updated_at TIMESTAMP NOT NULL,

  INDEX horse_index (horse_id),
  INDEX race_index (race_id),
  INDEX jockey_index (jockey_id),

  FOREIGN KEY (horse_id) 
    REFERENCES horses(id)
    ON DELETE CASCADE,
  FOREIGN KEY (race_id) 
    REFERENCES races(id)
    ON DELETE CASCADE,
  FOREIGN KEY (jockey_id) 
    REFERENCES jockeys(id)
    ON DELETE CASCADE
);
