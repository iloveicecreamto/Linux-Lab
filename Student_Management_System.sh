#!/bin/bash
# 22. Write a shell script to perform operations for student data like view, add and delete records.
touch stud_data.dt
while :
do
    clear
    echo "-----------------------------"
    echo "STUDENT MANAGEMENT SYSTEM"
    echo "-----------------------------"
    echo "1. Add Record"
    echo "2. View All Records"
    echo "3. View a Record"
    echo "4. Delete a Record"
    echo "5. Exit"
    echo "-----------------------------"
    echo "Enter your choice:"
    read choice

    case $choice in

    1)
        echo "Enter Roll Number:"
        read roll
        echo "Enter Name:"
        read name
        echo "Enter Subject 1 Mark:"
        read s1
        echo "Enter Subject 2 Mark:"
        read s2
        echo "Enter Subject 3 Mark:"
        read s3

        total=$((s1+s2+s3))

        echo "$roll | $name | $s1 | $s2 | $s3 | $total" >> stud_data.dt
        echo "Record Added"
        ;;

    2)
        echo "Roll | Name | Sub1 | Sub2 | Sub3 | Total"
        cat stud_data.dt
        ;;

    3)
        echo "Enter Roll Number:"
        read roll

        grep "^$roll" stud_data.dt || echo "Record Not Found"
        ;;

    4)
        echo "Enter Roll Number:"
        read roll

        if grep -q "^$roll" stud_data.dt
        then
            grep -v "^$roll" stud_data.dt > temp
            mv temp stud_data.dt
            echo "Record Deleted"
        else
            echo "Record Not Found"
        fi
        ;;

    5)
        echo "Exiting..."
        exit
        ;;

    *)
        echo "Invalid Choice"
        ;;
    esac
    read -p "Press Enter to continue..."
done
