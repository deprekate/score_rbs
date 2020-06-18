#!/bin/bash 

#$ -S /bin/bash
#$ -cwd

#$ -t 1-1699

SEEDFILE=files.tsv
SEED=$(awk "NR==$SGE_TASK_ID" $SEEDFILE)

#$ -o sge/out-$JOB_ID-$TASK_ID
#$ -e sge/err-$JOB_ID-$TASK_ID

python3 ~/master/PHANOTATE/phanotate.py data/${SEED}.fna > data/${SEED}.rbs

cut -f1,2 data/${SEED}.rbs | xargs -i sh -c "grep -P -c '^{}$' data/${SEED}.starts-ends" > data/${SEED}.types
