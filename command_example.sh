#"!/bin/bash
# ./command_example.sh


#何も処理を書かない場合、空行だとエラーになるので(コロン)をつける必要がある
i=0
if [ $i == 0 ]; then
    echo "hello shellscript world"
    :
elif [ $i == 1 ]; then
    :
else
    :
fi



# sed -i '' '7i\
#     :' command_example.sh
# ./command_example.sh

# sed -i '' '9i\
#     :' command_example.sh
# ./command_example.sh

# sed -i '' '11i\
#     :' command_example.sh
# sed -i '' '7i\
#     echo "hello shellscript world"\
# ' command_example.sh
# ./command_example.sh



sed -i '' '7i\
    :\
' start_if-nothing.sh
./start_if-nothing.sh
sed -i '' '6 s/# //' start_if-nothing.sh
sed -i '' '6 s/echo/# echo/' start_if-nothing.sh


sed -i '' '10i\
    :\
' start_if-nothing.sh
./start_if-nothing.sh

sed -i '' '13i\
    :\
' start_if-nothing.sh
sed -i '' '6i\
    echo "hello shellscript world"\
' start_if-nothing.sh
./start_if-nothing.sh



