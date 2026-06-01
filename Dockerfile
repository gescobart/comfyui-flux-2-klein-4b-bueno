# clean base image containing only comfyui, comfy-cli and comfyui-manager
FROM runpod/worker-comfyui:5.8.4-base

# copy all input data (like images or videos) into comfyui (uncomment and adjust if needed)
# COPY input/ /comfyui/input/

# user-provided inputs override the auto-generated placeholders above.
RUN wget --progress=dot:giga -O '/comfyui/input/bella-face.jpeg' "https://cool-anteater-319.convex.cloud/api/storage/b28e8ca8-1065-4111-a7e1-f0d966549b3a"
