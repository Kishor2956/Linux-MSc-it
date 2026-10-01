#!/bash
read -p "Enter Fisrt Number  : " a
read -p "Enter Second Number : " b
read -p "Enter Third Number  : " c

if [ $a -gt $b ] && [ $a -gt $c ];then 
echo "Fisrt is Largest : $a"

elif [ $b -gt $a ] && [ $b -gt $c ];then
echo "Second is Largest : $b"
 
else 
echo "Third is Largest Number : $c"
fi
