echo "Enter the EmployeeID (empno)"
read empno
echo "Enter the Name of Employee"
read empname
echo "enter the basic salary:"
read bsal
bsalp=`expr $bsal / 100`
if [ $bsal -gt 5000 ]
then
hra=`expr $bsalp \* 18`
else
hra=550
fi
da=`expr $bsalp \* 35`
pf=`expr $bsalp \* 13`
it=`expr $bsalp \* 14`
ta=`expr $bsalp \* 10`
gross=`expr $bsal + $hra + $da + $ta`
netsal=`expr $gross - $pf - $it`
echo "Empno : $empno"|tee cat >> emp.dat
echo "Empname : $empname"|tee cat >> emp.dat
echo "Basic : $bsal"|tee cat >> emp.dat
echo "HRA(House Rent Allowance): $hra"|tee cat >> emp.dat
echo "PF (Provident fund):$pf"|tee cat >> emp.dat
echo "TA (Travalling Allowance): $ta"|tee cat >> emp.dat
echo "IT (Income Tax) : $it"|tee cat >> emp.dat
echo "Gross salary : $gross"|tee cat >> emp.dat
echo "netsalary : $netsal"|tee cat >>emp.dat  

