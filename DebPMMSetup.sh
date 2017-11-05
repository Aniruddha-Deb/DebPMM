#!/bin/sh

set -e

codename=''


# get project codename
read -p "Enter project codename: " codename
codename_caps=$(echo $codename | tr 'a-z' 'A-Z')

mkdir -p "$codename/Documents/Team/Mail/Sent"
touch "$codename/Documents/Team/Team_members.txt"
echo "$codename_caps\nTEAM MEMBERS" > "$codename/Documents/Team/Team_members.txt"
mkdir -p "$codename/Documents/Team/Mail/Received"
mkdir -p "$codename/Documents/Team/WhatsApp"

mkdir -p "$codename/Documents/Project"
cd "$codename/Documents/Project"
mkdir "Planning" "Implementation" "Conclusion"

initialization="$codename_caps
INITIALIZATION PLAN

IDEA: 

OBEJCTIVE:

TARGET MARKET:

COMPETITORS:

TITLE:
"
touch "Initialization.txt"
echo "$initialization" > "Initialization.txt"

cd "Planning" 
touch "Bill_of_materials.xlsx" "Time_cost.xlsx" "Implementation_plan.txt"
mkdir "Construction" "Architecture_plan"
impl="$codename_caps\nIMPLEMENTATION PLAN"
echo "$impl" > "Implementation_plan.txt"

cd "../Implementation"
mkdir "Receipts"

cd "../Conclusion"
conc="$codename_caps\nCONCLUSION REPORT"
take="$codename_caps\nTAKEAWAYS"
touch "Conclusion.txt" "Takeaways.txt"
echo "$conc" > "Conclusion.txt"
echo "$take" > "Takeaways.txt"

cd "../../.."
mkdir "Hardware" "Software"
echo "Made all directories and related files"