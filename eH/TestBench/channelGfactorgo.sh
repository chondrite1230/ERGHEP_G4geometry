
for ((i=9;i<77;i++))
do
    cp ./setup/ch/Si_$i.mac primaryGeneratorSetup.mac
    ../bin/Application_Main <<EOF
/run/beamOn 100000000
exit
EOF
    mv test.txt ./result/Si_$i.txt
done