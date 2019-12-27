# CONFIG_FILE=configs/free_anchor_citypersons/retinanet_free_anchor_r50_fpn_1x.py
# CHECKPOINT_FILE=work_dirs/retinanet_free_anchor_r50_fpn_1x_citypersons/latest.pth
# CONFIG_FILE=configs/citypersons/faster_rcnn_r50_fpn_1x.py
# CHECKPOINT_FILE=work_dirs/citypersons_faster_rcnn_r50_fpn_1x/latest.pth
EVAL_METRICS="bbox"

# CONFIG_FILE=configs/citypersons/faster_rcnn_r50_fpn_1x.py
# CHECKPOINT_FILE=work_dirs/citypersons_faster_rcnn_r50_fpn_1x/latest.pth
# CUDA_VISIBLE_DEVICES=0 python tools/test.py ${CONFIG_FILE} ${CHECKPOINT_FILE} --out result/citypersons_faster_rcnn_r50_fpn_1x_epoch30.pkl --eval ${EVAL_METRICS}

# CONFIG_FILE=configs/citypersons/retinanet_r50_fpn_1x.py
# CHECKPOINT_FILE=work_dirs/citypersons_retinanet_r50_fpn_1x/latest.pth
# CUDA_VISIBLE_DEVICES=0 python tools/test.py ${CONFIG_FILE} ${CHECKPOINT_FILE} --out result/citypersons_retinanet_r50_fpn_1x_epoch30.pkl --eval ${EVAL_METRICS}
# 
CONFIG_FILE=configs/citypersons/retinanet_free_anchor_r50_fpn_1x.py
CHECKPOINT_FILE=work_dirs/citypersons_retinanet_free_anchor_r50_fpn_1x/latest.pth
CUDA_VISIBLE_DEVICES=0 python tools/test.py ${CONFIG_FILE} ${CHECKPOINT_FILE} --out result/citypersons_retinanet_free_anchor_r50_fpn_1x_epoch30.pkl --eval ${EVAL_METRICS} --show
# 
# CONFIG_FILE=configs/citypersons/cascade_rcnn_r50_fpn_1x.py
# CHECKPOINT_FILE=work_dirs/citypersons_cascade_rcnn_r50_fpn_1x/latest.pth
# CUDA_VISIBLE_DEVICES=0 python tools/test.py ${CONFIG_FILE} ${CHECKPOINT_FILE} --out result/citypersons_cascade_rcnn_r50_fpn_1x_epoch30.pkl --eval ${EVAL_METRICS}

# CONFIG_FILE=configs/citypersons/faster_rcnn_r50_fpn_1x_large.py
# CHECKPOINT_FILE=work_dirs/citypersons_faster_rcnn_r50_fpn_1x_large/latest.pth
# CUDA_VISIBLE_DEVICES=0 python tools/test.py ${CONFIG_FILE} ${CHECKPOINT_FILE} --out result/citypersons_faster_rcnn_r50_fpn_1x_large_epoch30.pkl --eval ${EVAL_METRICS}


