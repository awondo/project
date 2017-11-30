# ROB599 Final Project# 

## Perception

Task 1: In this task, you will estimate the number of cars (a non-negative integer) in a scene given a snapshot (a collection of one image, LiDAR points, and the projection matrix). The dataset is split into two parts.

https://www.kaggle.com/t/76d4e17682c645728c0ba4fd03a15c38

Task 2: In this task, you will estimate 3D bounding boxes in a scene given a snapshot. 

https://www.kaggle.com/t/6b38462ffcf34942a8e401f3f1551c72

* trainval: 6487 snapshots with ground truth 3D bounding box labels.
* test: 2128 snapshots without ground truth 3D bounding box labels.
In this dataset, only cars with the following properties are included during evaluation:

* close enough: sqrt(x^2 + y^2 + z^2) <= r_max
* mostly visible in the image: z >= sqrt(max(0, a^2 * x^2 - l^2))
* not occluded too much: coverage >= 0.4 for 2D bbox
* not in the any of the following classes (aka class labels): Unknown, Motorcycles, Industrial, Cycles, Boats, Helicopters, Planes, Commercial, Trains.
* small enough: height * width * length <= vol_max
where [x, y, z] is the centroid of the bound box in meters, r_max = 60.0, a = tan(50 deg), l = 3.0, vol_max = 50. In other words, you should only consider cars satisfying these properties. This information is embedded in the last column in each *_bbox.bin file which indicates whether a particular row should be ignored during evaluation or not.

You may use any resource, like github, as a base to help you perform this task, but you must develop your own algorithm/method. Running existing code without modification is strictly prohibited.


## Control

PDF in Control folder
