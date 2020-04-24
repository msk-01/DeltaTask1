sudo groupadd Chief
sudo groupadd Army
sudo groupadd Navy
sudo groupadd AirForce
for ((i=1;i<2;i++)); do
sudo usermod -a -G Army ArmyGeneral
sudo usermod -a -G Army Army${i}
done
for ((i=1;i<2;i++)); do
sudo usermod -a -G Navy NavyMarshal
sudo usermod -a -G Navy Navy${i}
done
for ((i=1;i<2;i++)); do
sudo usermod -a -G AirForce AirForceChief
sudo usermod -a -G AirForce AirForce${i}
done
sudo usermod -a -G Chief ChiefCommander
sudo usermod -a -G Chief ArmyGeneral
sudo usermod -a -G Chief NavyMarshal
sudo usermod -a -G Chief AirForceChief
sudo chown -R ChiefCommander /home/Chief 
for((i=1;i<2;i++));do
sudo chmod 777 /home/Army${i}
sudo chmod 777 /home/Navy${i}
sudo chmod 777 /home/AirForce${i}
done
sudo chmod 700 /home/ChiefCommander
sudo chmod 771 /home/ArmyGeneral
sudo chmod 771 /home/NavyMarshal
sudo chmod 771 /home/AirForceChief





