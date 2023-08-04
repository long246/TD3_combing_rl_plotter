# -*- coding: utf-8 -*-
import os
import shutil  # 导入移动模块
#本代码用于整理位于当前目录下results文件夹下数据的命名格式，方便使用rl_plotter 的--avg_group参数绘制方差阴影

dir = os.getcwd()
# dir = 'D:\Desktop\my-sfujim-td3（论文复现含数据2M）' #本地测试，请注释

# 做一个副本备份
if not os.path.exists(dir + '\\' + 'new_results'):
    shutil.copytree(dir + '\\' + 'results', dir + '\\' + 'new_results' )
old_floder_path = dir + '\\'+ 'new_results'
list_path = os.listdir(old_floder_path)

#过滤非文件夹
list_path =[x for x in list_path if os.path.isdir(old_floder_path + '\\' + x)]

#保留命名符合 *_*_*_* 的文件
list_path =[x for x in list_path if len(x.split('_')) == 4 ]

for index in list_path:

    old_file_name = index
    algo, env, _, seed = [x for x in index.split('_')]

    seed = seed.split('-')[0]
    seed = '-' + seed[-1:]
    new_file_name = algo + seed

    new_floder_path = old_floder_path + '\\' + env
    if not os.path.exists(new_floder_path):
        os.makedirs(new_floder_path)
    
    #当存在同种子(如两个seed1)时，后者不做修改
    if not os.path.exists(new_floder_path + '\\' + new_file_name):
        os.rename(old_floder_path + '\\' + old_file_name, new_floder_path + '\\' + new_file_name) 
