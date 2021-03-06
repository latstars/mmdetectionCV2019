# model settings
model = dict(
    type='RetinaBiNet',
    pretrained='torchvision://resnet50',
    backbone=dict(
        type='ResNet',
        depth=50,
        num_stages=4,
        out_indices=(0, 1, 2, 3),
        frozen_stages=1,
        style='pytorch'),
    neck=dict(
        type='FPN',
        in_channels=[256, 512, 1024, 2048],
        out_channels=256,
        start_level=1,
        add_extra_convs=True,
        num_outs=5),
    bbox_head=dict(
        type='FreeAnchorRetinaBiHead',
        num_classes=2,
        in_channels=256,
        stacked_convs=4,
        feat_channels=256,
        octave_base_scale=4,
        scales_per_octave=3,
        anchor_ratios=[0.5, 1.0, 2.0],
        anchor_strides=[8, 16, 32, 64, 128],
        target_means=[.0, .0, .0, .0],
        target_stds=[0.1, 0.1, 0.2, 0.2],
        loss_bbox=dict(type='SmoothL1Loss', beta=0.11, loss_weight=0.75)),
    bbox_visible_head=dict(
        type='FreeAnchorRetinaBiVisibleHead',
        num_classes=2,
        in_channels=256,
        stacked_convs=4,
        feat_channels=256,
        octave_base_scale=4,
        scales_per_octave=3,
        anchor_ratios=[0.5, 1.0, 2.0],
        anchor_strides=[8, 16, 32, 64, 128],
        target_means=[.0, .0, .0, .0],
        target_stds=[0.1, 0.1, 0.2, 0.2],
        loss_weight=0.4,
        loss_bbox=dict(type='SmoothL1Loss', beta=0.11, loss_weight=0.75)))
 
    # bbox_head=dict(
    #     type='FreeAnchorRetinaBiHead',
    #     num_classes=2,
    #     in_channels=256,
    #     stacked_convs=4,
    #     feat_channels=256,
    #     octave_base_scale=4,
    #     scales_per_octave=3,
    #     anchor_ratios=[0.5, 1.0, 2.0],
    #     anchor_strides=[8, 16, 32, 64, 128],
    #     target_means=[.0, .0, .0, .0],
    #     target_stds=[1.0, 1.0, 1.0, 1.0],
    #     loss_cls=dict(
    #         type='FocalLoss',
    #         use_sigmoid=True,
    #         gamma=2.0,
    #         alpha=0.25,
    #         loss_weight=1.0),
    #     loss_bbox=dict(type='SmoothL1Loss', beta=0.11, loss_weight=1.0)),
    # bbox_visible_head=dict(
    #     type='RetinaBiVisibleHead',
    #     num_classes=2,
    #     in_channels=256,
    #     stacked_convs=4,
    #     feat_channels=256,
    #     octave_base_scale=4,
    #     scales_per_octave=3,
    #     anchor_ratios=[0.5, 1.0, 2.0],
    #     anchor_strides=[8, 16, 32, 64, 128],
    #     target_means=[.0, .0, .0, .0],
    #     target_stds=[1.0, 1.0, 1.0, 1.0],
    #     loss_cls=dict(
    #         type='FocalLoss',
    #         use_sigmoid=True,
    #         gamma=2.0,
    #         alpha=0.25,
    #         loss_weight=0.4),
    #     loss_bbox=dict(type='SmoothL1Loss', beta=0.11, loss_weight=0.4)))
# training and testing settings
train_cfg = dict(
    assigner_bi=dict(
        type='MaxIoUBiAssigner',
        pos_iou_thr=0.5,
        neg_iou_thr=0.4,
        pos_cover_thr=0.5,
        min_pos_iou=0,
        ignore_iof_thr=-1),
    assigner_bi_visible=dict(
        type='MaxIoUBiAssigner',
        pos_iou_thr=0.5,
        neg_iou_thr=0.4,
        pos_cover_thr=0.5,
        min_pos_iou=0,
        ignore_iof_thr=-1),
    a_target=0,
    allowed_border=-1,
    pos_weight=-1,
    debug=False)
test_cfg = dict(
    nms_pre=1000,
    min_bbox_size=0,
    score_thr=0.05,
    nms=dict(type='nms', iou_thr=0.5),
    max_per_img=100)
# dataset settings
dataset_type = 'CitypersonsBiDataset'
data_root = 'data/citypersons_images/'
img_norm_cfg = dict(
    mean=[123.675, 116.28, 103.53], std=[58.395, 57.12, 57.375], to_rgb=True)
train_pipeline = [
    dict(type='LoadImageFromFile'),
    dict(type='LoadBiAnnotations', with_bbox=True),
    dict(type='Resize', img_scale=(2048, 1024), keep_ratio=True),
    dict(type='RandomFlip', flip_ratio=0.5),
    dict(type='Normalize', **img_norm_cfg),
    dict(type='Pad', size_divisor=32),
    dict(type='DefaultFormatBundleBi'),
    dict(type='CollectBi', keys=['img', 'gt_bboxes', 'gt_bboxes_visible', 'gt_labels']),
]
test_pipeline = [
    dict(type='LoadImageFromFile'),
    dict(
        type='MultiScaleFlipAug',
        img_scale=(2048, 1024),
        flip=False,
        transforms=[
            dict(type='Resize', keep_ratio=True),
            dict(type='RandomFlip'),
            dict(type='Normalize', **img_norm_cfg),
            dict(type='Pad', size_divisor=32),
            dict(type='ImageToTensor', keys=['img']),
            dict(type='Collect', keys=['img']),
        ])
]
data = dict(
    imgs_per_gpu=2,
    workers_per_gpu=2,
    train=dict(
        type=dataset_type,
        ann_file=data_root + 'annotations/train_bi.json',
        img_prefix=data_root + 'train/',
        pipeline=train_pipeline),
    val=dict(
        type=dataset_type,
        ann_file=data_root + 'annotations/val_full.json',
        img_prefix=data_root + 'val/',
        pipeline=test_pipeline),
    test=dict(
        type=dataset_type,
        ann_file=data_root + 'annotations/val_full.json',
        img_prefix=data_root + 'val/',
        pipeline=test_pipeline))
# optimizer
optimizer = dict(type='SGD', lr=0.001, momentum=0.9, weight_decay=0.0001)
optimizer_config = dict(grad_clip=dict(max_norm=35, norm_type=2))
# learning policy
lr_config = dict(
    policy='step',
    warmup='linear',
    warmup_iters=500,
    warmup_ratio=1.0 / 3,
    step=[15])
checkpoint_config = dict(interval=1)
# yapf:disable
log_config = dict(
    interval=50,
    hooks=[
        dict(type='TextLoggerHook'),
        # dict(type='TensorboardLoggerHook')
    ])
# yapf:enable
# runtime settings
total_epochs = 30
dist_params = dict(backend='nccl')
log_level = 'INFO'
work_dir = './work_dirs/citypersons_free_anchor_retinanet_r50_fpn_1x_bi_niou04_notarget_smallbi04_lw04'
load_from = None
resume_from = None
workflow = [('train', 1)]
