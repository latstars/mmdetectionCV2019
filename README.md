
# MMDetection for 2019 Fall CV Project

项目：基于锚的双检测框回归行人检测算法
作者：李勇刚  王骞  严祚宇
邮件：{1901213354, 1901111298, 1901111342}@pku.edu.cn
该代码库基于MMDetection实现，在行人检测数据集CityPersons上实现了FreeAnchor方法和Bi-Box Regression方法。

## Benchmark and model zoo
所实现的检测器算法。

|                    | ResNet   | CONFIG_FILE |
|--------------------|:--------:|:-----------:|
| Faster R-CNN       | ✓        |(configs/citypersons/faster_rcnn_r50_fpn_1x.py)|
| Cascade R-CNN      | ✓        |(configs/citypersons/cascade_rcnn_r50_fpn_1x.py)|
| RetinaNet          | ✓        |(configs/citypersons/retinanet_r50_fpn_1x.py)|
| FreeAnchor         | ✓        |(configs/citypersons/retinanet_free_anchor_r50_fpn_1x.py)|
| Bi-Box Regression  | ✓        |(configs/citypersons/retinanet_r50_fpn_1x_bi_niou04_notarget_smallbi04.py)|


## Introduction
该库在PyTorch 1.1以上运行，安装请参考[INSTALL.md](docs/INSTALL.md)，运行请参考[GETTING_STARTED.md](docs/GETTING_STARTED.md)
这里我们提供了运行脚本[tools/train_citypersons.py](tools/train_citypersons.py)。

## Installation

Please refer to [INSTALL.md](docs/INSTALL.md) for installation and dataset preparation.


## Get Started

Please see [GETTING_STARTED.md](docs/GETTING_STARTED.md) for the basic usage of MMDetection.


## Data Preparation

将[https://www.cityscapes-dataset.com/](https://www.cityscapes-dataset.com/)上下载的数据放置在data/citypersons_iamges/目录下。
分别放置到train/, val/, test/子目录下，可以参照data/citypersons_iamges/citypersons_script/下面的脚本进行处理。

## 模型运行

```bash
python tools/train_citypersons.py

# train_citypersons脚本中包含如下内容
# 根据模型对CONFIG_FILE和CHECKPOINT_FILE进行相应的设置即可

# GPU数目
# GPU_NUM=1
# 配置文件
# CONFIG_FILE=configs/citypersons/free_anchor_retinanet_r50_fpn_1x_bi_niou04_notarget_smallbi04_lw04.py
# 运行指令，7884指运行端口，--validate代表训练过程中验证模型性能
# CUDA_VISIBLE_DEVICES=2 tools/dist_train.sh ${CONFIG_FILE} ${GPU_NUM} 7884 --validate 

# 测试指标
# EVAL_METRICS=bbox
# 测试权重文件
# CHECKPOINT_FILE=work_dirs/citypersons_free_anchor_retinanet_r50_fpn_1x_bi_niou04_notarget_smallbi04_lw04/latest.pth
# 测试指令
# CUDA_VISIBLE_DEVICES=2 python tools/test.py ${CONFIG_FILE} ${CHECKPOINT_FILE} --out result/citypersons_free_anchor_retinanet_r50_fpn_1x_bi_niou04_notarget_smallbi04_lw04_epoch19.pkl --eval ${EVAL_METRICS}

```

## License

项目协议[Apache 2.0 license](LICENSE).


