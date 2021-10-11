#!/bin/bash
# CUDA_VISIBLE_DEVICES=0 python run_nerf.py --config configs/240_blender_chair_4views_ctr.txt &
# CUDA_VISIBLE_DEVICES=1 python run_nerf.py --config configs/241_blender_drums_4views_ctr.txt &
# CUDA_VISIBLE_DEVICES=2 python run_nerf.py --config configs/242_blender_ficus_4views_ctr.txt &
# CUDA_VISIBLE_DEVICES=4 python run_nerf.py --config configs/243_blender_lego_4views_ctr.txt &
# CUDA_VISIBLE_DEVICES=5 python run_nerf.py --config configs/244_blender_mic_4views_ctr.txt &
# CUDA_VISIBLE_DEVICES=6 python run_nerf.py --config configs/245_blender_ship_4views_ctr.txt &
# CUDA_VISIBLE_DEVICES=4 python run_nerf.py --config configs/246_blender_hotdog_4views_ctr.txt &
# CUDA_VISIBLE_DEVICES=5 python run_nerf.py --config configs/247_blender_materials_4views_ctr.txt &

# With GAN
# CUDA_VISIBLE_DEVICES=0 python run_nerf.py --config configs/266_blender_hotdog_4views_ctr_gan.txt &
# CUDA_VISIBLE_DEVICES=1 python run_nerf.py --config configs/276_blender_hotdog_4views_ctr_gan1.txt &
# CUDA_VISIBLE_DEVICES=3 python run_nerf.py --config configs/267_blender_materials_4views_ctr_gan.txt &
# CUDA_VISIBLE_DEVICES=2 python run_nerf.py --config configs/277_blender_materials_4views_ctr_gan1.txt &

## Test with 4 views
CUDA_VISIBLE_DEVICES=3 python run_nerf.py --render_only --render_test --config configs/246_blender_hotdog_4views_ctr.txt &
CUDA_VISIBLE_DEVICES=4 python run_nerf.py --render_only --render_test --config configs/247_blender_materials_4views_ctr.txt &
CUDA_VISIBLE_DEVICES=5 python run_nerf.py --render_only --render_test --config configs/243_blender_lego_4views_ctr.txt &
wait;
CUDA_VISIBLE_DEVICES=3 python run_nerf.py --render_only --render_test --config configs/244_blender_mic_4views_ctr.txt &
CUDA_VISIBLE_DEVICES=4 python run_nerf.py --render_only --render_test --config configs/245_blender_ship_4views_ctr.txt &
CUDA_VISIBLE_DEVICES=5 python run_nerf.py --render_only --render_test --config configs/240_blender_chair_4views_ctr.txt &
wait;
CUDA_VISIBLE_DEVICES=3 python run_nerf.py --render_only --render_test --config configs/241_blender_drums_4views_ctr.txt &
CUDA_VISIBLE_DEVICES=4 python run_nerf.py --render_only --render_test --config configs/242_blender_ficus_4views_ctr.txt &

### FID KID
cp -r logs/247_blender_materials_4views_ctr/testset_200000 logs/scarf_images_4/materials_testset_200000
cp -r logs/246_blender_hotdog_4views_ctr/testset_200000 logs/scarf_images_4/hotdog_testset_200000
cp -r logs/243_blender_lego_4views_ctr/testset_200000 logs/scarf_images_4/lego_testset_200000
cp -r logs/244_blender_mic_4views_ctr/testset_200000 logs/scarf_images_4/mic_testset_200000
cp -r logs/245_blender_ship_4views_ctr/testset_200000 logs/scarf_images_4/ship_testset_200000
cp -r logs/240_blender_chair_4views_ctr/testset_200000 logs/scarf_images_4/chair_testset_200000
cp -r logs/241_blender_drums_4views_ctr/testset_200000 logs/scarf_images_4/drums_testset_200000
cp -r logs/242_blender_ficus_4views_ctr/testset_200000 logs/scarf_images_4/ficus_testset_200000