wget https://inductions.delta.nitt.edu/sysad-task1-attendance.log
ABC=$(date "+%Y-%m-%d")
DEF="RECORD"
read REC
if [ ${REC}=${DEF}0 ]; then 
SUNDAY=$(date "+%Y-%m-%d" --date="last sunday")
echo $(cat sysad-task1-attendance.log | grep "Army"| grep "${SUNDAY}") 
echo $(cat sysad-task1-attendance.log | grep "Navy"| grep "${SUNDAY}")
echo $(cat sysad-task1-attendance.log | grep "AirForce"| grep "${SUNDAY}")   
elif [ ${REC}=${DEF}1]; then 
MONDAY=$(date "+%Y-%m-%d" --date="last monday")
echo $(cat sysad-task1-attendance.log | grep "Army"| grep "${MONDAY}") 
echo $(cat sysad-task1-attendance.log | grep "Navy"| grep "${MONDAY}")
echo $(cat sysad-task1-attendance.log | grep "AirForce"| grep "${MONDAY}")   
elif [ ${REC}=${DEF}2]; then 
TUESDAY=$(date "+%Y-%m-%d" --date="last tuesday")
echo $(cat sysad-task1-attendance.log | grep "Army"| grep "${TUESDAY}") 
echo $(cat sysad-task1-attendance.log | grep "Navy"| grep "${TUESDAY}")
echo $(cat sysad-task1-attendance.log | grep "AirForce"| grep "${TUESDAY}")   
elif [ ${REC}=${DEF}3]; then 
WEDNESDAY=$(date "+%Y-%m-%d" --date="last wednesday")
echo $(cat sysad-task1-attendance.log | grep "Army"| grep "${WEDNESDAY}") 
echo $(cat sysad-task1-attendance.log | grep "Navy"| grep "${WEDNESDAY}")
echo $(cat sysad-task1-attendance.log | grep "AirForce"| grep "${WEDNESDAY}")  
elif [ ${REC}=${DEF}4]; then 
THURSDAY=$(date "+%Y-%m-%d" --date="last thursday")
echo $(cat sysad-task1-attendance.log | grep "Army"| grep "${THURSDAY}") 
echo $(cat sysad-task1-attendance.log | grep "Navy"| grep "${THURSDAY}")
echo $(cat sysad-task1-attendance.log | grep "AirForce"| grep "${THURSDAY}")   
elif [ ${REC}=${DEF}5]; then 
FRIDAY=$(date "+%Y-%m-%d" --date="last friday")
echo $(cat sysad-task1-attendance.log | grep "Army"| grep "${FRIDAY}") 
echo $(cat sysad-task1-attendance.log | grep "Navy"| grep "${FRIDAY}")
echo $(cat sysad-task1-attendance.log | grep "AirForce"| grep "${FRIDAY}")   
elif [ ${REC}=${DEF}6]; then 
SATURDAY=$(date "+%Y-%m-%d" --date="last saturday")
echo $(cat sysad-task1-attendance.log | grep "Army"| grep "${SATURDAY}") 
echo $(cat sysad-task1-attendance.log | grep "Navy"| grep "${SATURDAY}")
echo $(cat sysad-task1-attendance.log | grep "AirForce"| grep "${SATURDAY}")    
else
echo "Wrong input"
fi 
