#!/bash

read -p "Enter First Number  : " a
read -p "Enter Second Number : " b

add()
{
	echo "Addition = $(( $1 + $2))"
}
sub()
{
	echo "Subtraction = $(( $1 - $2 ))"
}
mul()
{
	echo "Multiplication = $(( $1 * $2 ))"
}
div()
{
	if ( $2 -eq 0 )
	then
	echo "Number is Not Divide by Zero"
	else	
	echo "Division = $(( $1 / $2 ))"
	fi
}
mod()
{
	if ( $2 -eq 0 )
	then
	echo "Number is Not Divide by Zero"
	else
	echo "Modulus = $(( $1 % $2 ))"
	fi
}
add $a $b
sub $a $b 
mul $a $b
div $a $b
mod $a $b
