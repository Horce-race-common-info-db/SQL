CREATE TABLE courses
(
  id int(8) unsigned AUTO_INCREMENT PRIMARY KEY,
  racecourse_id tinyint unsigned NOT NULL,
  coursetype_id tinyint unsigned NOT NULL,
  course_length int(8) NOT NULL,
  created_at TIMESTAMP NOT NULL,
  updated_at TIMESTAMP NOT NULL,

  INDEX racecourse_index (racecourse_id),
  INDEX coursetype_index (coursetype_id),
  INDEX course_length_index (course_length),

  FOREIGN KEY (racecourse_id) 
    REFERENCES racecourses(id)
    ON DELETE CASCADE,
  FOREIGN KEY (coursetype_id) 
    REFERENCES coursetypes(id)
    ON DELETE CASCADE
);
