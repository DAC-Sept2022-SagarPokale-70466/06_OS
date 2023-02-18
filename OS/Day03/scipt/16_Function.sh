#! /bin/bash

function print(){

echo "This is a my First Function"

}

function printNum()
{
	echo "Num = $1"
}

function add()
{
	res=`expr $1 + $2`
	echo "Result $res"
}

print

print

printNum 11

add 10 20
