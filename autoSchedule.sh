wget https://inductions.delta.nitt.edu/sysad-task1-position.log
for ((i=1;i<2;i++)); do
sudo touch /home/Army${i}/post_allotted.txt
sudo chmod o+w /home/Army${i}/post_allotted.txt
done
for ((i=1;i<2;i++)); do
sudo touch /home/Navy${i}/post_allotted.txt
sudo chmod o+w /home/Navy${i}/post_allotted.txt
done
for ((i=1;i<2;i++)); do
sudo touch /home/AirForce${i}/post_allotted.txt
sudo chmod o+w /home/AirForce${i}/post_allotted.txt
done
ABC=$(date "+%Y-%m-%d")
for ((i=1;i<2;i++)); do
sudo cat sysad-task1-position.log | grep -w "Army${i}" | grep "${ABC}" > /home/Army${i}/post_allotted.txt
done


for ((i=1;i<2;i++)); do
sudo cat sysad-task1-position.log | grep -w "Navy${i}" | grep "${ABC}" > /home/Navy${i}/post_allotted.txt
done

for ((i=1;i<2;i++)); do
sudo cat sysad-task1-position.log | grep -w "AirForce${i}" | grep "${ABC}" > /home/AirForce${i}/post_allotted.txt
done

