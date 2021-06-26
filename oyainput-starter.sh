script=$(basename $0) # oyainput-starter.sh

echo "${script}: Start script..."
while true
do
  ps ax | grep -v -e grep -e ${script} | grep -q oyainput || result=$?
  # プロセスを監視し、oyainput が起動していなければ起動する
  if [ ! ${result} = "0" ]; then
    echo "oyainput is not running. Start oyainput..."
    oyainput
  else
    echo "oyainput process is detected."
  fi
  sleep 10
done
