python data_processing.py
cd new_results

#method0
#rl_plotter --save  --pdf --avg_group --shaded_std

#method 1
#strings=("Ant" "HalfCheetah" "Walker2d" "Hopper" "Humanoid")  #comment it and add "your_environment_name"
strings=("HalfCheetah")
for string in "${strings[@]}"
do
    cd ./"$string"
    if [ "$string" = "HalfCheetah" ]; then
        rl_plotter --save  --pdf --avg_group --shaded_std  --no_legend_group_num   \
                  --ylabel "Average Return" --xlabel "Time steps" --fig_length 8 --fig_width 6 --file_name ./"$string"
        cd ..
    else
        rl_plotter --save  --pdf --avg_group --shaded_std  --no_legend_group_num  \
                  --ylabel "Average Return" --xlabel "Time steps" --fig_length 8 --fig_width 6 --file_name ./"$string" --no_legend
#                  --style seaborn-poster
        cd ..
    fi
done

#method 2
#rl_plotter --save     --filter Ant         --title Ant          --log_dir ./Ant
#rl_plotter --save     --filter HalfCheetah --title HalfCheetah  --log_dir ./HalfCheetah
#rl_plotter --save     --filter Walker2d    --title Walker2d     --log_dir ./Walker2d
#rl_plotter --save    --filter Hopper      --title Hopper       --log_dir ./Hopper
#rl_plotter --save     --filter Humanoid    --title Humanoid     --log_dir ./Humanoid

echo "plot.sh runs successfully!"
