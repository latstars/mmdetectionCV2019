set -x 
# CONFIG_FILE=configs/free_anchor_citypersons/retinanet_free_anchor_r50_fpn_1x.py
# CONFIG_FILE=configs/citypersons/faster_rcnn_r50_fpn_1x.py
# CONFIG_FILE=configs/citypersons/faster_rcnn_r50_fpn_1x_large.py
# CONFIG_FILE=configs/citypersons/retinanet_r50_fpn_1x.py
# CONFIG_FILE=configs/citypersons/retinanet_free_anchor_r50_fpn_1x.py
# CONFIG_FILE=faster_rcnn_r50_fpn_1x_large.py
# CONFIG_FILE=faster_rcnn_r50_fpn_1x.py
# CUDA_VISIBLE_DEVICES=4 python tools/train.py ${CONFIG_FILE} --validate
# GPU_NUM=1
EVAL_METRICS="bbox"

# CONFIG_FILE=configs/citypersons/retinanet_r50_fpn_1x.py
# CUDA_VISIBLE_DEVICES=1 tools/dist_train.sh ${CONFIG_FILE} ${GPU_NUM} 7879 --validate 
# CONFIG_FILE=configs/citypersons/retinanet_free_anchor_r50_fpn_1x.py
# CUDA_VISIBLE_DEVICES=2 tools/dist_train.sh ${CONFIG_FILE} ${GPU_NUM} 7880 --validate 
# CONFIG_FILE=configs/citypersons/cascade_rcnn_r50_fpn_1x.py
# CUDA_VISIBLE_DEVICES=3 tools/dist_train.sh ${CONFIG_FILE} ${GPU_NUM} 7881 --validate


# CONFIG_FILE=configs/citypersons/retinanet_r50_fpn_1x_large.py
# CUDA_VISIBLE_DEVICES=1 tools/dist_train.sh ${CONFIG_FILE} ${GPU_NUM} 7879 --validate 
# CHECKPOINT_FILE=work_dirs/citypersons_retinanet_r50_fpn_1x_large/latest.pth
# CUDA_VISIBLE_DEVICES=1 python tools/test.py ${CONFIG_FILE} ${CHECKPOINT_FILE} --out result/citypersons_retinanet_r50_fpn_1x_large_epoch30.pkl --eval ${EVAL_METRICS}

# GPU_NUM=2
# CONFIG_FILE=configs/citypersons/retinanet_free_anchor_r50_fpn_1x_large.py
# CUDA_VISIBLE_DEVICES=0,2 tools/dist_train.sh ${CONFIG_FILE} ${GPU_NUM} 7880 --validate 
# CHECKPOINT_FILE=work_dirs/citypersons_retinanet_free_anchor_r50_fpn_1x_large/latest.pth
# CUDA_VISIBLE_DEVICES=2 python tools/test.py ${CONFIG_FILE} ${CHECKPOINT_FILE} --out result/citypersons_retinanet_free_anchor_r50_fpn_1x_large_epoch30.pkl --eval ${EVAL_METRICS}
 
# GPU_NUM=2
# CONFIG_FILE=configs/citypersons/cascade_rcnn_r50_fpn_1x_large.py
# CUDA_VISIBLE_DEVICES=3,4 tools/dist_train.sh ${CONFIG_FILE} ${GPU_NUM} 7881 --validate 
# CHECKPOINT_FILE=work_dirs/citypersons_cascade_rcnn_r50_fpn_1x_large_gpu2/latest.pth
# CUDA_VISIBLE_DEVICES=3 python tools/test.py ${CONFIG_FILE} ${CHECKPOINT_FILE} --out result/citypersons_cascade_rcnn_r50_fpn_1x_large_gpu2_epoch30.pkl --eval ${EVAL_METRICS}

# GPU_NUM=1
# CONFIG_FILE=configs/citypersons/retinanet_free_anchor_r50_fpn_1x_cosine.py
# CUDA_VISIBLE_DEVICES=0 tools/dist_train.sh ${CONFIG_FILE} ${GPU_NUM} 7880 --validate 
# CHECKPOINT_FILE=work_dirs/citypersons_retinanet_free_anchor_r50_fpn_1x_cosine/latest.pth
# CUDA_VISIBLE_DEVICES=0 python tools/test.py ${CONFIG_FILE} ${CHECKPOINT_FILE} --out result/citypersons_retinanet_free_anchor_r50_fpn_1x_cosine_epoch30.pkl --eval ${EVAL_METRICS}

# GPU_NUM=1
# CONFIG_FILE=configs/citypersons/retinanet_free_anchor_r50_fpn_1x_nasfpn.py
# CUDA_VISIBLE_DEVICES=0 tools/dist_train.sh ${CONFIG_FILE} ${GPU_NUM} 7880 --validate 
# CHECKPOINT_FILE=work_dirs/citypersons_retinanet_free_anchor_r50_fpn_1x_nasfpn/latest.pth
# CUDA_VISIBLE_DEVICES=0 python tools/test.py ${CONFIG_FILE} ${CHECKPOINT_FILE} --out result/citypersons_retinanet_free_anchor_r50_fpn_1x_nasfpn_epoch30.pkl --eval ${EVAL_METRICS}

# GPU_NUM=1
# CONFIG_FILE=configs/citypersons/retinanet_free_anchor_r50_fpn_1x.py
# CUDA_VISIBLE_DEVICES=0 tools/dist_train.sh ${CONFIG_FILE} ${GPU_NUM} 7880 --validate 
# CHECKPOINT_FILE=work_dirs/citypersons_retinanet_free_anchor_r50_fpn_1x_debug/latest.pth
# CUDA_VISIBLE_DEVICES=0 python tools/test.py ${CONFIG_FILE} ${CHECKPOINT_FILE} --out result/citypersons_retinanet_free_anchor_r50_fpn_1x_debug_epoch30.pkl --eval ${EVAL_METRICS}

# GPU_NUM=1
# CONFIG_FILE=configs/citypersons/retinanet_r50_fpn_1x_bi.py
# CUDA_VISIBLE_DEVICES=0 tools/dist_train.sh ${CONFIG_FILE} ${GPU_NUM} 7880 # --validate 
# CHECKPOINT_FILE=work_dirs/citypersons_retinanet_r50_fpn_1x_bi/latest.pth
# CUDA_VISIBLE_DEVICES=0 python tools/test.py ${CONFIG_FILE} ${CHECKPOINT_FILE} --out result/citypersons_retinanet_r50_fpn_1x_bi_epoch30.pkl --eval ${EVAL_METRICS}

# GPU_NUM=1
# CONFIG_FILE=configs/citypersons/retinanet_r50_fpn_1x_bi.py
# CUDA_VISIBLE_DEVICES=0 tools/dist_train.sh ${CONFIG_FILE} ${GPU_NUM} 7880 --validate 
# CHECKPOINT_FILE=work_dirs/citypersons_retinanet_r50_fpn_1x_bi_iou04/latest.pth
# CUDA_VISIBLE_DEVICES=0 python tools/test.py ${CONFIG_FILE} ${CHECKPOINT_FILE} --out result/citypersons_retinanet_r50_fpn_1x_bi_iou04_epoch30.pkl --eval ${EVAL_METRICS}

# GPU_NUM=1
# CONFIG_FILE=configs/citypersons/retinanet_r50_fpn_2x_bi.py
# CUDA_VISIBLE_DEVICES=1 tools/dist_train.sh ${CONFIG_FILE} ${GPU_NUM} 7881 --validate 
# CHECKPOINT_FILE=work_dirs/citypersons_retinanet_r50_fpn_2x_bi/latest.pth
# CUDA_VISIBLE_DEVICES=1 python tools/test.py ${CONFIG_FILE} ${CHECKPOINT_FILE} --out result/citypersons_retinanet_r50_fpn_2x_bi_epoch30.pkl --eval ${EVAL_METRICS}

# GPU_NUM=1
# CONFIG_FILE=configs/citypersons/retinanet_r50_fpn_2x_bi_iou04.py
# CUDA_VISIBLE_DEVICES=3 tools/dist_train.sh ${CONFIG_FILE} ${GPU_NUM} 7882 --validate 
# CHECKPOINT_FILE=work_dirs/citypersons_retinanet_r50_fpn_2x_bi_iou04/latest.pth
# CUDA_VISIBLE_DEVICES=3 python tools/test.py ${CONFIG_FILE} ${CHECKPOINT_FILE} --out result/citypersons_retinanet_r50_fpn_2x_bi_iou04_epoch30.pkl --eval ${EVAL_METRICS}

# GPU_NUM=1
# CONFIG_FILE=configs/citypersons/retinanet_r50_fpn_1x_bi_niou04_notarget.py
# CUDA_VISIBLE_DEVICES=0 tools/dist_train.sh ${CONFIG_FILE} ${GPU_NUM} 7882 --validate 
# CHECKPOINT_FILE=work_dirs/citypersons_retinanet_r50_fpn_1x_bi_niou04_notarget_originiou/latest.pth
# CUDA_VISIBLE_DEVICES=0 python tools/test.py ${CONFIG_FILE} ${CHECKPOINT_FILE} --out result/citypersons_retinanet_r50_fpn_1x_bi_niou04_notarget_originiou_epoch30.pkl --eval ${EVAL_METRICS}

# GPU_NUM=1
# CONFIG_FILE=configs/citypersons/retinanet_r50_fpn_1x_bi_niou04_notarget_nobi.py
# CUDA_VISIBLE_DEVICES=1 tools/dist_train.sh ${CONFIG_FILE} ${GPU_NUM} 7883 --validate 
# CHECKPOINT_FILE=work_dirs/citypersons_retinanet_r50_fpn_1x_bi_niou04_notarget_nobi/latest.pth
# CUDA_VISIBLE_DEVICES=1 python tools/test.py ${CONFIG_FILE} ${CHECKPOINT_FILE} --out result/citypersons_retinanet_r50_fpn_1x_bi_niou04_notarget_nobi_epoch30.pkl --eval ${EVAL_METRICS}

# GPU_NUM=1
# CONFIG_FILE=configs/citypersons/retinanet_r50_fpn_1x_bi_niou04_notarget_smallbi.py
# CUDA_VISIBLE_DEVICES=0 tools/dist_train.sh ${CONFIG_FILE} ${GPU_NUM} 7883 --validate 
# CHECKPOINT_FILE=work_dirs/citypersons_retinanet_r50_fpn_1x_bi_niou04_notarget_smallbi/latest.pth
# CUDA_VISIBLE_DEVICES=0 python tools/test.py ${CONFIG_FILE} ${CHECKPOINT_FILE} --out result/citypersons_retinanet_r50_fpn_1x_bi_niou04_notarget_smallbi_epoch30.pkl --eval ${EVAL_METRICS}

# GPU_NUM=1
# CONFIG_FILE=configs/citypersons/retinanet_r50_fpn_1x_bi_niou04_notarget_smallbi04.py
# CUDA_VISIBLE_DEVICES=1 tools/dist_train.sh ${CONFIG_FILE} ${GPU_NUM} 7884 --validate 
# CHECKPOINT_FILE=work_dirs/citypersons_retinanet_r50_fpn_1x_bi_niou04_notarget_smallbi04/latest.pth
# CUDA_VISIBLE_DEVICES=1 python tools/test.py ${CONFIG_FILE} ${CHECKPOINT_FILE} --out result/citypersons_retinanet_r50_fpn_1x_bi_niou04_notarget_smallbi04_epoch30.pkl --eval ${EVAL_METRICS}

# GPU_NUM=1
# CONFIG_FILE=configs/citypersons/free_anchor_retinanet_r50_fpn_1x_bi_niou04_notarget_smallbi04.py
# CUDA_VISIBLE_DEVICES=2 tools/dist_train.sh ${CONFIG_FILE} ${GPU_NUM} 7884 --validate 
# CHECKPOINT_FILE=work_dirs/citypersons_free_anchor_retinanet_r50_fpn_1x_bi_niou04_notarget_smallbi04/latest.pth
# CUDA_VISIBLE_DEVICES=2 python tools/test.py ${CONFIG_FILE} ${CHECKPOINT_FILE} --out result/citypersons_free_anchor_retinanet_r50_fpn_1x_bi_niou04_notarget_smallbi04_epoch30.pkl --eval ${EVAL_METRICS}

# GPU_NUM=1
# CONFIG_FILE=configs/citypersons/free_anchor_retinanet_r50_fpn_1x_bi_niou04_notarget_smallbi04_lw04_2.py
# CUDA_VISIBLE_DEVICES=5 tools/dist_train.sh ${CONFIG_FILE} ${GPU_NUM} 7885 --validate 
# CHECKPOINT_FILE=work_dirs/citypersons_free_anchor_retinanet_r50_fpn_1x_bi_niou04_notarget_smallbi04_lw04_2/latest.pth
# CUDA_VISIBLE_DEVICES=5 python tools/test.py ${CONFIG_FILE} ${CHECKPOINT_FILE} --out result/citypersons_free_anchor_retinanet_r50_fpn_1x_bi_niou04_notarget_smallbi04_lw04_2_epoch30.pkl --eval ${EVAL_METRICS}

GPU_NUM=1
CONFIG_FILE=configs/citypersons/free_anchor_retinanet_r50_fpn_1x_bi_niou04_notarget_smallbi04_lw04.py
CUDA_VISIBLE_DEVICES=0 tools/dist_train.sh ${CONFIG_FILE} ${GPU_NUM} 7884 --validate 
CHECKPOINT_FILE=work_dirs/citypersons_free_anchor_retinanet_r50_fpn_1x_bi_niou04_notarget_smallbi04_lw04/latest.pth
CUDA_VISIBLE_DEVICES=0 python tools/test.py ${CONFIG_FILE} ${CHECKPOINT_FILE} --out result/citypersons_free_anchor_retinanet_r50_fpn_1x_bi_niou04_notarget_smallbi04_lw04_epoch19.pkl --eval ${EVAL_METRICS}
