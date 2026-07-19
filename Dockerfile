FROM runpod/worker-comfyui:5.8.6-sdxl

RUN cd /comfyui/custom_nodes \
    && git clone https://github.com/1038lab/ComfyUI-RMBG.git \
    && cd ComfyUI-RMBG \
    && pip install --no-cache-dir -r requirements.txt
