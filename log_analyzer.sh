
#Log Analyzer
#This script will analyze log files to extract and summarize important information

 show_help(){
    echo "Usage: log_analyzer.sh -f <log_file> [-e <error_pattern>] [-h]"
echo "Options:"
echo "-f <log_file> : Specify the log file to analyze"
echo "-e <error_pattern> : Optional. Provide a regualr expression pattern to match specific error message"
echo "-h : Show help"
 }
 log_file=""
error_pattern=""

while getopts ":f:e:h" option; do
  case $option in
    f) log_file=$OPTARG ;;
    e) error_pattern=$OPTARG ;;
    h) show_help; exit 0 ;;
    *) echo "Invalid option: -$OPTARG" >&2; show_help; exit 1 ;;
  esac
done

if [ -z "$log_file" ]; then
  echo "Error: Log file is required."
  show_help
  exit 1
fi

if [ -n "$error_pattern" ]; then
  echo "Analyzing log file '$log_file' for pattern '$error_pattern'..."
  grep -E "$error_pattern" "$log_file" | tee error_summary.txt
  echo "Error summary saved to 'error_summary.txt'."
else
  echo "Analyzing log file '$log_file'..."
  grep -E "ERROR|WARN|INFO" "$log_file" | tee log_summary.txt
  echo "Log summary saved to 'log_summary.txt'."
fi
