# this is 8foldLoop.sh  I cannot make it executable in cit bash. Use >bash 8fold.sh to run it 
# building the code This was for a practice run, where things begin with 2. I will want to do it for the 3* and 4* trial lists. I could put one more loop around it to make for start in '3' '4'; do for fn in $start. But I chose not to. 
for fn in 3*; do
 for nums in '9' '20' ; do 
  for word in 'cntxt2024JUN25short' 'doubleMaxFeedback' ; do
	cmdStr1='s/$np/'$nums'/g';  # this was wrong. I had $pn but in the master files it was $np 
	cmdStr2='s/$pre/'$word'/g';
   echo $cmdStr1 $cmdStr2
   sed $cmdStr1 $fn | sed $cmdStr2 > $nums$word$fn;
  done;
  wait;
 done;
 wait;
done; 