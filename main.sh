chmod +x main.sh



if [ "$#" -ne 1 ]; then

    echo "Usage: $0 <text_file>"

    exit 1

fi



TEXT_FILE="$1"



mkdir -p output



cp "$TEXT_FILE" output/



cd output



cat "$TEXT_FILE" > read.txt



pwd > pwd.txt

ls > ls.txt



cp "$TEXT_FILE" copy.txt



todaydate() {

	date

}



todaydate > date.txt



wc -w "$TEXT_FILE" > textcount.txt



ps -e | head -n 5 > mount.txt



ip a | head -n 5 > netstat.txt



mount | head -n 5 > mount.txt



touch permissions.txt

chmod 777 permissions.txt



TESTENV1="test"

export TESTENV1



grep -o '\\b\\w\\{3, \\}\\b' "$TEXT_FILE" > regex.txt



cd ..
