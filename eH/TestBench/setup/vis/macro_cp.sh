#!/bin/bash
y_default=-7.7
for((i=1; i<78; i++))
do	  	
    y=`echo "$y_default + 0.2*$i"|bc`
    theta=`echo "scale=3;a($y/10.86)/0.017453293" | bc -l`
    min=`echo "90-($theta)-5"|bc`
    max=`echo "90-($theta)+5"|bc`
    
    echo Si_$i.mac $y $theta $min $max
    
    cp Si_0.mac Si_$i.mac
    sed -i "5s/-7.7/$y/" Si_$i.mac
    sed -i "13s/120.3/$min/" Si_$i.mac
    sed -i "14s/130.3/$max/" Si_$i.mac    
done 
