FROM runpod/worker-comfyui:5.8.6-sdxl

RUN cd /comfyui/custom_nodes \
    && git clone --depth 1 https://github.com/1038lab/ComfyUI-RMBG.git

RUN pip install --no-cache-dir -r /comfyui/custom_nodes/ComfyUI-RMBG/requirements.txt \
    && pip install --no-cache-dir transformers pillow scikit-image huggingface_hub

RUN echo "=== Contenu de custom_nodes ===" \
    && ls -la /comfyui/custom_nodes \
    && ls -la /comfyui/custom_nodes/ComfyUI-RMBG
