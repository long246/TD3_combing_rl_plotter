# TD3_combing_rl_plotter-main

A enchanced implementation of [rl_plotter](https://github.com/gxywy/rl-plotter) , a plotter for reinforcement learning (RL).

### Installation
Install rl_plotter from PIP
```
pip install rl_plotter
```
Git clone this repository
```
git clone git@github.com:long246/TD3_combing_rl_plotter.git
```
Replace the three files (plot_utils, plotter, and plotter_spinup.py in conda package) with the three file in this repository.
For me, this three file is in the path :
```
D:\home\user\Anaconda\Lib\site-packages\rl_plotter
```
### Usage
#### Method 1
```
cd results
rl_plotter --save  --pdf --avg_group --shaded_std
```
#### Method 2 (Recommended)
Batch plotting with two files (plot.sh and data_processing) newly added by running:
```
bash plot.sh
```
### Acknowledgment
The core of this funtion newly added is conducted by  [ALiShan](https://github.com/ALiShan-RL)