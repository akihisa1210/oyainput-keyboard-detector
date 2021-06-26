script=$(basename $0) # oyainput-starter.sh

echo "${script}: Start script..."
while true
do
  result=$(ps ax | grep -v -e grep -e ${script} | grep -q oyainput)
  # プロセスを監視し、oyainput が起動していなければ起動する
  if [ $? -ne 0 ]; then
    echo "oyainput is not running. Start oyainput..."
    oyainput
  else
    echo "oyainput is running."
  fi
  sleep 10
done
