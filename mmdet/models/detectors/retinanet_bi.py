from ..registry import DETECTORS
from .single_stage_bi import SingleStageBiDetector


@DETECTORS.register_module
class RetinaBiNet(SingleStageBiDetector):

    def __init__(self,
                 backbone,
                 neck,
                 bbox_head,
                 bbox_visible_head,
                 train_cfg=None,
                 test_cfg=None,
                 pretrained=None):
        super(RetinaBiNet, self).__init__(backbone, neck, bbox_head, bbox_visible_head, train_cfg,
                                        test_cfg, pretrained)
