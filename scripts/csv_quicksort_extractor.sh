file="data/nour_2022-11-23/measurements_2.txt"
OUTPUT_FILE=data/nour_2022-11-23/measurements_2.csv
touch $OUTPUT_FILE

while IFS=' ' read -r fst scnd thrd frth ffth 
do
    
    if [[ $fst == *"Size"* ]];then
        size=$scnd;

    elif [[ $fst == *"Sequential"* ]];then
        echo "$size, 0, $frth" >> $OUTPUT_FILE;

    elif [[ $fst == *"Parallel"* ]];then
        echo "$size, 1, $frth" >> $OUTPUT_FILE;

    elif [[ $fst == *"Built-in"* ]];then
        echo "$size, 2, $frth" >> $OUTPUT_FILE;
    fi

done < $file