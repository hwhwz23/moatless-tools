
source .venv/bin/activate

model="ollama/devstral-64k"

MOATLESS_RUNNER_MOUNT_SOURCE_DIR=./moatless python3 scripts/run_evaluation.py \
    --litellm-model-name $model \
    --flow swebench_react \
    --dataset-split easy2 \
    --num-parallel-jobs 1


