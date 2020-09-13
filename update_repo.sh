logreport=../log/current_state_sims.html
cp ../log/current_state_sims.html .
if [ $? -eq 0 ]; then
    echo Copy html OK
else
 echo Failed to copy  $logreport
 if test -f "$logreport"; then
      echo "$logreport exists."
  else
      echo "$logreport missing"
  fi
fi
cp ../GanntChart_CARRA.html .
cp ../waiting_times.html .
cp ../quota_scripts/mars_east_plots.png .
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
git commit -am "update repo"
git push origin master
