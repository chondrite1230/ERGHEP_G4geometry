#!/bin/bash
y_default=-6.6
for((i=1; i<67; i++))
do	  	
    y=`echo "$y_default + 0.2*$i"|bc`
    theta=`echo "scale=3;a($y/9.54)/0.017453293" | bc -l`
    min=`echo "90-($theta)-5"|bc`
    max=`echo "90-($theta)+5"|bc`
    
    echo Si_$i.mac $y $theta $min $max
    
    cp Si_0.mac Si_$i.mac
    sed -i "5s/-6.6/$y/" Si_$i.mac
    sed -i "13s/119.6/$min/" Si_$i.mac
    sed -i "14s/129.6/$max/" Si_$i.mac    
done 
