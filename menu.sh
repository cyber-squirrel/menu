#!/bin/bash
#title:         menu.sh
#description:   A simple bash text GUI menu app
#author:        Jarrod O'Malley
#created:       Febuary 04, 2018
#updated:       N/A
#version:       1.0.0
#usage:         bash ./menu.sh
#==============================================================================

show_menu(){
    echo -e "******************************************************"
    echo -e "BASIC BASH CLI TOOL"
    echo -e "version: 1.0.1"
    echo -e "updated: 2018-02-02 "
    echo -e "******************************************************"
    echo -e " 1) Option 1 "
    echo -e " 2) Option 2 "
    echo -e " 2) Option 3 "
    echo -e " 3) HELP"
    echo -e "******************************************************"
    echo -e "Please enter a menu option and enter or enter to exit. "
    read opt
}
function option_picked() {
    set -- Error: No message passed
    MESSAGE=$*
    echo -e "$MESSAGE"
}
clear
show_menu
while [ "$opt" != '' ]
do
    if [[ $opt == "" ]]; then
        exit;
    else
        case $opt in
            1) option_picked "Option 1";
                echo -e "******************************************************"
                echo "Please select an option... "
                PS3="Enter your selection (select a number or press enter): "
                echo -e "******************************************************"
                select topic in "topic1" "topic2" HOME QUIT
                do
                    case $topic in
                        "topic1")
                            clear;
                            echo -e "******************************************************"
                            echo -e ""
                            echo -e "$topic..."
                            echo -e ""
                            break
                            show_menu;
                        ;;
                        "topic2")
                            clear;
                            echo -e "******************************************************"
                            echo -e ""
                            echo -e "$topic..."
                            echo -e ""
                            break
                            show_menu;
                        ;;
                        "HOME")
                            echo -e ""
                            echo "Returning to Main Menu..."
                            echo -e ""
                            break
                            clear;
                            show_menu;
                        ;;
                        "QUIT")
                            clear;
                            echo -e "******************************************************"
                            echo "Exiting now..."
                            echo -e "******************************************************"
                            exit
                        ;;
                        *)
                            echo -e "******************************************************"
                            echo "Invalid option. Program will exit now."
                            echo -e "******************************************************"
                            exit
                        ;;
                    esac
                done
                show_menu;
            ;;
            2) clear;
                option_picked "Option 2";
                echo -e "******************************************************"
                echo "Please select an option... "
                PS3="Enter your selection (select a number or press enter): "
                echo -e "******************************************************"
                select topic in "topic1" "topic2" HOME QUIT
                do
                    case $topic in
                        "topic1")
                            clear;
                            echo -e "******************************************************"
                            echo -e ""
                            echo -e "$topic..."
                            echo -e ""
                            break
                            show_menu;
                        ;;
                        "topic2")
                            clear;
                            echo -e "******************************************************"
                            echo -e ""
                            echo -e "$topic..."
                            echo -e ""
                            break
                            show_menu;
                        ;;
                        "HOME")
                            echo -e ""
                            echo "Returning to Main Menu..."
                            echo -e ""
                            break
                            clear;
                            show_menu;
                        ;;
                        "QUIT")
                            clear;
                            echo -e "******************************************************"
                            echo "Exiting now..."
                            echo -e "******************************************************"
                            exit
                        ;;
                        *)
                            echo -e "******************************************************"
                            echo "Invalid option. Program will exit now."
                            echo -e "******************************************************"
                            exit
                        ;;
                    esac
                done
                show_menu;
            ;;
            3) clear;
                option_picked "Option 3";
                echo -e "******************************************************"
                echo "Please select an option... "
                PS3="Enter your selection (select a number or press enter): "
                echo -e "******************************************************"
                select config in "Test Notifications" HOME QUIT
                do
                    case $config in
                        "Test Notifications")
                            clear;
                            echo -e "******************************************************"
                            echo "Preparing  $config ..."
                            echo -e "******************************************************"
                            echo -e ""
                            echo -e "Sending $config "
                            bash ~/menu/data_files/tests/tests_mail/test_mail.sh
                            echo -e "$config  Sent"
                            echo -e ""
                        ;;
                        "HOME")
                            echo -e ""
                            echo "Returning to Main Menu..."
                            echo -e ""
                            break
                            clear;
                            show_menu;
                        ;;
                        "QUIT")
                            clear;
                            echo -e "******************************************************"
                            echo "Exiting now..."
                            echo -e "******************************************************"
                            exit
                        ;;
                        *)
                            echo -e "******************************************************"
                            echo "Invalid option. Program will exit now."
                            echo -e "******************************************************"
                            exit
                        ;;
                    esac
                done
                show_menu;
            ;;
            4) clear;
                option_picked "HELP MENU";
                IFS=""
                for help in $(less ./data_files/help.txt);
                do
                    echo "$help"
                done
                show_menu;
            ;;

            x)exit;
            ;;
            n)exit;
            ;;
            *)
                option_picked "Please pick an option from the menu:";
                show_menu;
            ;;
        esac
    fi
done
