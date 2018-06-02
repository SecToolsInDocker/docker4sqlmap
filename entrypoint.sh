#!/bin/sh
# Updated by: nancheal <nancheal@gmail.com>
#!/bin/sh
# Updated by: nancheal <nancheal@gmail.com>
export TOP_PID=$$
trap 'exit 1' TERM
exit_script(){
        kill -s TERM $TOP_PID
}
if [ $# -gt 0 ];then 
    while getopts "O:" OPT;do
            case $OPT in
                    O)
                            OPTIONS=$OPTARG
                            ;;
                    \?)
                            echo "You should specify -O 'command' !!!"
                            :|exit_script
                            ;;
            esac
    done
    /usr/bin/python sqlmap.py $OPTIONS
else
    echo "You should specify -O 'command' !!!"
    :|exit_script
fi