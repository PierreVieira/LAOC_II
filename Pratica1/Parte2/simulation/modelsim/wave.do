view wave 
wave clipboard store
wave create -driver freeze -pattern clock -initialvalue HiZ -period 100ps -dutycycle 50 -starttime 0ps -endtime 1000ps sim:/p2_mem_ram/clock 
wave create -driver freeze -pattern counter -startvalue 00000 -endvalue 111 -type Range -direction Up -period 50ps -step 1 -repeat forever -range 4 0 -starttime 0ps -endtime 1000ps sim:/p2_mem_ram/address 
WaveExpandAll -1
wave create -driver freeze -pattern constant -value 0 -starttime 0ps -endtime 250ps sim:/p2_mem_ram/wren 
wave modify -driver freeze -pattern constant -value 1 -starttime 250ps -endtime 750ps Edit:/p2_mem_ram/wren 
wave modify -driver freeze -pattern constant -value 0 -starttime 750ps -endtime 1000ps Edit:/p2_mem_ram/wren 
wave create -driver freeze -pattern random -initialvalue zzzzzzzz -period 50ps -random_type Uniform -seed 5 -range 7 0 -starttime 0ps -endtime 1000ps sim:/p2_mem_ram/data 
WaveExpandAll -1
WaveCollapseAll -1
wave clipboard restore
