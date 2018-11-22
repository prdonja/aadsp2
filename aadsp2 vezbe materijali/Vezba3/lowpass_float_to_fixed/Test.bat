: Delete log files first.
del cmp_Model0_vs_Model1.txt
del cmp_Model1_vs_Model2.txt
del cmp_Model2_vs_Model3.txt

: Execute Model 0, Model 1 and Model 2
cd model_0\Debug
"filter Model0.exe"
cd ..\..

cd model_1\Debug
"filter Model1.exe"
cd ..\..

cd model_2_3\Debug
"filter Model2.exe"
cd ..\..

cd model_2_3\
c:\CirrusDSP\bin\cmdline_simulator.exe -project SimulatorConfigurationTemp.sbr -max_cycles 1000000
cd ..

: Generate new logs
..\tools\PCMCompare.exe out_intl_model0.pcm out_intl_model1.pcm -b16 2> cmp_Model0_vs_Model1.txt
..\tools\PCMCompare.exe out_intl_model1.pcm out_intl_model2.pcm -b16 2> cmp_Model1_vs_Model2.txt
..\tools\PCMCompare.exe out_intl_model2.pcm out_intl_model3.pcm -b16 2> cmp_Model2_vs_Model3.txt



