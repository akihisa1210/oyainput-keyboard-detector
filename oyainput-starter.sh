while true
do
  # プロセスを監視し、oyainput が起動していなければ起動する
  ps ax | grep -v grep | grep -q oyainput || oyainput
  sleep 10
done
