SELECT *
FROM job_applied
ORDER BY job_id;
ALTER TABLE job_applied
ADD contact VARCHAR(50);
UPDATE job_applied
SET contact = 'Johnny bravo'
WHERE job_id = 1;
UPDATE job_applied
SET contact = 'Rahul Modi'
WHERE job_id = 2;
UPDATE job_applied
SET contact = 'Donald Sitaraman'
WHERE job_id = 3;
UPDATE job_applied
SET contact = 'Jackie Rana'
WHERE job_id = 4;
UPDATE job_applied
SET contact = 'Pajama lover'
WHERE job_id = 5;