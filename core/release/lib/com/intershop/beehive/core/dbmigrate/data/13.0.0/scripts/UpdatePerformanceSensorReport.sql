-- Drop current primary key
ALTER TABLE
  PerformanceSensorReport
DROP PRIMARY KEY;

-- Add new primary key column (uUID)
ALTER TABLE
  PerformanceSensorReport
ADD (
  uUID VARCHAR2(28 CHAR)
);

-- Fill uUID column
UPDATE 
  PerformanceSensorReport 
SET 
  uUID = sf_create_uuid();
COMMIT;

-- Make uUID primary key
ALTER TABLE 
  PerformanceSensorReport 
MODIFY (uUID NOT NULL);
ALTER TABLE 
  PerformanceSensorReport 
ADD PRIMARY KEY (uUID);

-- Add CLOB column "TEMP_SensorKey"
ALTER TABLE 
  PerformanceSensorReport
ADD (
  TEMP_SensorKey CLOB
);

-- Fill CLOB column "TEMP_SensorKey"
UPDATE 
  PerformanceSensorReport 
SET 
  TEMP_SensorKey = SensorKey;
COMMIT;

-- Remove old column "SensorKey"
ALTER TABLE 
  PerformanceSensorReport
DROP COLUMN SensorKey;

-- Rename column "TEMP_SensorKey" to "SensorKey"
ALTER TABLE 
  PerformanceSensorReport 
RENAME COLUMN TEMP_SensorKey TO SensorKey;
ALTER TABLE 
  PerformanceSensorReport 
MODIFY (SensorKey NOT NULL);

COMMIT;

EXIT