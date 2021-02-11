#!/bin/bash
#If no arguments do usual updates

if [ -z $1 ]; then

logreport=/home/ms/dk/nhd/scripts/carra/log/current_state_sims.html
cp ../log/current_state_sims.html .
if [ $? -eq 0 ]; then
    echo Copy html OK
else
 echo Failed to copy  $logreport
 echo Checking if file exists
 if test -f "$logreport"; then
      echo $logreport exists
      echo Updating repo
  else
      echo $logreport missing
      echo Not updating repo at this time
      exit
  fi
fi
cp ../GanntChart_CARRA.html .
cp ../waiting_times.html .
cp ../quota_scripts/mars_east_plots.png .
cp ../quota_scripts/MARS_archive_status.png .
cp ../quota_scripts/mars_west_plots.png .
cp ../dayProgress_IGB_1_2020.png ./figs
cp ../dayProgress_IGB_2_2020.png ./figs
cp ../dayProgress_IGB_1B_2020.png ./figs
cp ../dayProgress_IGB_2B_2020.png ./figs
cp ../dayProgress_NE_1_2020.png ./figs
cp ../dayProgress_NE_2_2020.png ./figs
cp ../dayProgress_NE_3_2020.png ./figs
cp ../dayProgress_IGB_2B_2020.png ./figs
cp ../dayProgress_IGB_3_2020.png ./figs
cp ../dayProgress_IGB_3_2021.png ./figs
cp ../dayProgress_NE_3_2021.png ./figs
cp ../dayProgress_IGB_4_2021.png ./figs
cp ../dayProgress_NE_4_2021.png ./figs
cp ../dayProgress_IGB_5_2021.png ./figs
cp ../dayProgress_NE_5_2021.png ./figs
cp ../dayProgress_IGB_6_2021.png ./figs
cp ../dayProgress_NE_6_2021.png ./figs
git commit -am "update repo"
git push origin master
else
echo $1
echo Updating only local files
git commit -am "short update"
git push origin master
fi
