from coco import COCO
from eval_MR_multisetup import COCOeval

annType = 'bbox'  # specify type here
print('Running demo for *%s* results.' % (annType))

# initialize COCO ground truth api
annFile = 'val_gt.json'
# initialize COCO detections api
# resFile = '../result/50_65.pkl.json'
resFiles = []
resFiles += ['../result/citypersons_cascade_rcnn_r50_fpn_1x_epoch30.pkl.bbox.json']
resFiles += ['../result/citypersons_cascade_rcnn_r50_fpn_1x_large_epoch30.pkl.bbox.json']
resFiles += ['../result/citypersons_cascade_rcnn_r50_fpn_1x_epoch30.pkl.bbox.json']
resFiles += ['../result/citypersons_cascade_rcnn_r50_fpn_1x_large_epoch30.pkl.bbox.json']
resFiles += ['../result/citypersons_faster_rcnn_r50_fpn_1x_epoch30.pkl.bbox.json']
resFiles += ['../result/citypersons_faster_rcnn_r50_fpn_1x_large_epoch30.pkl.bbox.json']
resFiles += ['../result/citypersons_retinanet_free_anchor_r50_fpn_1x_cosine_epoch30.pkl.bbox.json']
resFiles += ['../result/citypersons_retinanet_free_anchor_r50_fpn_1x_debug_epoch30.pkl.bbox.json']
resFiles += ['../result/citypersons_retinanet_free_anchor_r50_fpn_1x_epoch30.pkl.bbox.json']
resFiles += ['../result/citypersons_retinanet_free_anchor_r50_fpn_1x_large_epoch30.pkl.bbox.json']
resFiles += ['../result/citypersons_retinanet_free_anchor_r50_fpn_1x_nasfpn_epoch30.pkl.bbox.json']
resFiles += ['../result/citypersons_retinanet_r50_fpn_1x_epoch30.pkl.bbox.json']
resFiles += ['../result/citypersons_retinanet_r50_fpn_1x_large_epoch30.pkl.bbox.json']
resFiles = ['../result/citypersons_retinanet_r50_fpn_1x_bi_epoch30.pkl.bbox.json']
resFiles = ['../result/citypersons_retinanet_r50_fpn_1x_bi_epoch30.pkl.bbox.json']
resFiles = ['../result/citypersons_retinanet_r50_fpn_1x_bi_epoch30.pkl.bbox.json']
resFiles = ['../result/citypersons_retinanet_r50_fpn_1x_bi_epoch30.pkl.bbox.json']
resFiles = []
resFiles += ['../result/citypersons_retinanet_r50_fpn_1x_bi_epoch30.pkl.bbox.json']
resFiles += ['../result/citypersons_retinanet_r50_fpn_1x_bi_iou04_epoch30.pkl.bbox.json']
resFiles += ['../result/citypersons_retinanet_r50_fpn_2x_bi_epoch30.pkl.bbox.json']
resFiles += ['../result/citypersons_retinanet_r50_fpn_2x_bi_iou04_epoch30.pkl.bbox.json']
resFiles = ['../result/citypersons_retinanet_r50_fpn_1x_bi_niou04_notarget_smallbi04_epoch30.pkl.bbox.json']
# resFiles = ['../result/citypersons_retinanet_r50_fpn_1x_bi_niou04_notarget_nobi_epoch30.pkl.bbox.json']
resFiles = ['../result/citypersons_retinanet_r50_fpn_1x_bi_niou04_notarget_smallbi_epoch30.pkl.bbox.json']
resFiles = ['../result/citypersons_free_anchor_retinanet_r50_fpn_1x_bi_niou04_notarget_smallbi04_epoch30.pkl.bbox.json']
resFiles = ['../result/citypersons_free_anchor_retinanet_r50_fpn_1x_bi_niou04_notarget_smallbi04_lw04_epoch30.pkl.bbox.json']
resFiles = ['../result/citypersons_free_anchor_retinanet_r50_fpn_1x_bi_niou04_notarget_smallbi04_lw04_epoch19.pkl.bbox.json']
resFiles = []
resFiles = [
            '../result/baseline.json',
            '../result/Non-local.json',
            '../result/ACBlock.json',
            '../result/AC_vertical.json',
            '../result/ANN.json',
            ]
resFiles = ['../result/citypersons_free_anchor_retinanet_r50_fpn_1x_bi_niou04_notarget_smallbi04_lw04_epoch30.pkl.bbox.json']



## running evaluation
res_file = open("results.txt", "w")
for resFile in resFiles:
    print(resFile)
    for id_setup in range(0, 2):
        cocoGt = COCO(annFile)
        cocoDt = cocoGt.loadRes(resFile)
        imgIds = sorted(cocoGt.getImgIds())
        cocoEval = COCOeval(cocoGt, cocoDt, annType)
        cocoEval.params.imgIds = imgIds
        cocoEval.evaluate(id_setup)
        cocoEval.accumulate()
        cocoEval.summarize(id_setup, res_file)
    
res_file.close()
