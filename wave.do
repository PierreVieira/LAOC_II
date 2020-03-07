view wave 
wave clipboard store
wave create -driver freeze -pattern clock -initialvalue HiZ -period 100ps -dutycycle 50 -starttime 0ps -endtime 1000ps sim:/memoria_ram/clock 
wave create -driver freeze -pattern constant -value 011 -range 4 0 -starttime 0ps -endtime 1000ps sim:/memoria_ram/address 
WaveExpandAll -1
wave create -driver freeze -pattern random -initialvalue zzzzzzzz -period 50ps -random_type Uniform -seed 5 -range 7 0 -starttime 0ps -endtime 1000ps sim:/memoria_ram/data 
WaveExpandAll -1
wave create -driver freeze -pattern constant -value 0 -starttime 0ps -endtime 250ps sim:/memoria_ram/wren 
wave create -driver freeze -pattern constant -value 0 -starttime 0ps -endtime 1000ps sim:/memoria_ram/wren 
wave modify -driver freeze -pattern constant -value 1 -starttime 250ps -endtime 500ps Edit:/memoria_ram/wren 
wave modify -driver freeze -pattern constant -value St1 -starttime 700ps -endtime 950ps Edit:/memoria_ram/wren 
WaveCollapseAll -1
wave clipboard restore
