
#!/bin/bash
#BSUB -J ddsm_promoter_design       # Job name
#BSUB -o /home/vinodr1/global/batch_jobs/ddsm/%J.out   # Output file name with job ID
#BSUB -e /home/vinodr1/global/batch_jobs/ddsm/%J.err   # Error file name with job ID
#BSUB -q long
#BSUB -n 1
#BSUB -W 24:00
#BSUB -R "span[hosts=1]"
#BSUB -R rusage[mem=16]
#BSUB -gpu "num=1:gmodel=A100_SXM4_80GB:j_exclusive=yes"
nvidia-smi
source ~/scratch/venvs/ddsm/bin/activate
python3 train_promoter_designer.py
