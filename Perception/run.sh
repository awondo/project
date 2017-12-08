

FILES=~/College/Grad_School/ROB599/Project/Perception/ROB599_PerceptionProject_SampleCode/deploy/test/*

let i=0;
for path in $FILES; do
	outfile="project_testing/outputs/output"$i;
	touch $outfile;
	./darknet detect cfg/yolo.cfg yolo.weights $path/*.jpg > $outfile;
	echo $i
	let i+=1;	
#	$path
done
