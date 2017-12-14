#!/bin/bash
MINID=0
MAXID=300000
STEP=10000
MIGRATE_USER=migrate
PASSWORD='secret-password'
HOST='my-database-instance'
 
 
for ((i=0; i<=$MAXID; i+=$STEP)); do
echo -n "$i";
mysql edxapp <<EOF
INSERT INTO edxapp_csmh.coursewarehistoryextended_studentmodulehistoryextended (id, version, created, state, grade, max_grade, student_module_id)
  SELECT id, version, created, state, grade, max_grade, student_module_id
  FROM edxapp.courseware_studentmodulehistory
  WHERE id BETWEEN $i AND $(($i+$STEP-1));
EOF
echo '.';
sleep 2
done
