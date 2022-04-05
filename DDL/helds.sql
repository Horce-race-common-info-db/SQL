CREATE TABLE helds
(
  id bigint(20) unsigned AUTO_INCREMENT PRIMARY KEY,
  racecourse_id tinyint unsigned NOT NULL,
  held_year tinyint unsigned NOT NULL,
  held_month tinyint unsigned NOT NULL,
  held_day tinyint unsigned NOT NULL,
  number_of_times tinyint unsigned NOT NULL,
  number_of_days tinyint unsigned NOT NULL,
  created_at TIMESTAMP NOT NULL,
  updated_at TIMESTAMP NOT NULL,

  INDEX racecourse_index (racecourse_id),
  INDEX number_of_times_index (number_of_times),
  INDEX number_of_days_index (number_of_days),

  FOREIGN KEY (racecourse_id) 
    REFERENCES racecourses(id)
    ON DELETE CASCADE
);
