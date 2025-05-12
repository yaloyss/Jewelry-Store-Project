ALTER TABLE employee
    ADD COLUMN positionId INT,
ADD CONSTRAINT fkEmployeePosition FOREIGN KEY (positionId) REFERENCES `position`(positionId);
