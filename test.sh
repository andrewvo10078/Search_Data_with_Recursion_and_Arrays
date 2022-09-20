#Compile the code
# if the file calculate exits then remove it
program=arrayRec
group=1
for i in `seq 1 1 9`; do
    if [ -f output${group}${i}.txt ]; then
        rm output${group}${i}.txt
    fi
done

if [ -f ${program} ]; then
    rm ${program}
fi
g++ -std=c++11 *.cpp -o ${program}
# if the file densemult does not exit then exit the test
if [ ! -f ${program} ]; then
    echo -e "\033[1;91mCompile FAILED.\033[0m"
    exit
fi
# clean
if [ -f *.out ]; then
	rm *.out
fi
if [ -f *.stdeer ]; then
	rm *.stderr
fi
if [ -f *.stdcout ]; then
	rm *.stdcout
fi
# For test case 1
# input 1.txt and output 1.out
./${program} "input=input${group}1.txt;command=command${group}1.txt;output=output${group}1.txt" 1>1.stdcout 2>1.stderr
# compare 1.out with 1.ans, output the difference to 1.diff
diff -iEBwu ans${group}1.txt output${group}1.txt > 1.diff
# if diff returns nothing, it means you pass the test case (Your ourput file 1.out is correct)
if [ $? -ne 0 ]; then
    # display "test case 1 FAILED" to the screen. The word "FAILED" is highlighted in Red color
    echo -e "Test case 1    \033[1;91mFAILED.\033[0m"
else
    # display "test case 1 PASSED" to the screen. The word "PASSED" is highlighted in Green color
    echo -e "Test case 1    \033[1;92mPASSED.\033[0m"
    # remove the file 1.diff
    rm -f 1.diff
fi
# For test case 2
# input2.txt and output2.out
./${program} "input=input${group}2.txt;command=command${group}2.txt;output=output${group}2.txt" 1>1.stdcout 2>1.stderr
# compare 1.out with 1.ans, output the difference to 1.diff
diff -iEBwu ans${group}2.txt output${group}2.txt > 2.diff
# if diff returns nothing, it means you pass the test case (Your ourput file 1.out is correct)
if [ $? -ne 0 ]; then
    # display "test case 1 FAILED" to the screen. The word "FAILED" is highlighted in Red color
    echo -e "Test case 2    \033[1;91mFAILED.\033[0m"
else
    # display "test case 1 PASSED" to the screen. The word "PASSED" is highlighted in Green color
    echo -e "Test case 2    \033[1;92mPASSED.\033[0m"
    # remove the file 1.diff
    rm -f 2.diff
fi
# For test case 3
# input 3.txt and output 3.out
./${program} "input=input${group}3.txt;command=command${group}3.txt;output=output${group}3.txt" 1>1.stdcout 2>1.stderr
# compare 1.out with 1.ans, output the difference to 1.diff
diff -iEBwu ans${group}3.txt output${group}3.txt > 3.diff
# if diff returns nothing, it means you pass the test case (Your ourput file 1.out is correct)
if [ $? -ne 0 ]; then
    # display "test case 1 FAILED" to the screen. The word "FAILED" is highlighted in Red color
    echo -e "Test case 3    \033[1;91mFAILED.\033[0m"
else
    # display "test case 1 PASSED" to the screen. The word "PASSED" is highlighted in Green color
    echo -e "Test case 3    \033[1;92mPASSED.\033[0m"
    # remove the file 1.diff
    rm -f 3.diff
fi
# For test case 4
# input 3.txt and output 3.out
./${program} "input=input${group}4.txt;command=command${group}4.txt;output=output${group}4.txt" 1>1.stdcout 2>1.stderr
# compare 1.out with 1.ans, output the difference to 1.diff
diff -iEBwu ans${group}4.txt output${group}4.txt > 4.diff
# if diff returns nothing, it means you pass the test case (Your ourput file 1.out is correct)
if [ $? -ne 0 ]; then
    # display "test case 1 FAILED" to the screen. The word "FAILED" is highlighted in Red color
    echo -e "Test case 4    \033[1;91mFAILED.\033[0m"
else
    # display "test case 1 PASSED" to the screen. The word "PASSED" is highlighted in Green color
    echo -e "Test case 4    \033[1;92mPASSED.\033[0m"
    # remove the file 1.diff
    rm -f 4.diff
fi
# For test case 5
# input 3.txt and output 3.out
./${program} "input=input${group}5.txt;command=command${group}5.txt;output=output${group}5.txt" 1>1.stdcout 2>1.stderr
# compare 1.out with 1.ans, output the difference to 1.diff
diff -iEBwu ans${group}5.txt output${group}5.txt > 5.diff
# if diff returns nothing, it means you pass the test case (Your ourput file 1.out is correct)
if [ $? -ne 0 ]; then
    # display "test case 1 FAILED" to the screen. The word "FAILED" is highlighted in Red color
    echo -e "Test case 5    \033[1;91mFAILED.\033[0m"
else
    # display "test case 1 PASSED" to the screen. The word "PASSED" is highlighted in Green color
    echo -e "Test case 5    \033[1;92mPASSED.\033[0m"
    # remove the file 1.diff
    rm -f 5.diff
fi
# For test case 6
# input 3.txt and output 3.out
./${program} "input=input${group}6.txt;command=command${group}6.txt;output=output${group}6.txt" 1>1.stdcout 2>1.stderr
# compare 1.out with 1.ans, output the difference to 1.diff
diff -iEBwu ans${group}6.txt output${group}6.txt > 6.diff
# if diff returns nothing, it means you pass the test case (Your ourput file 1.out is correct)
if [ $? -ne 0 ]; then
    # display "test case 1 FAILED" to the screen. The word "FAILED" is highlighted in Red color
    echo -e "Test case 6    \033[1;91mFAILED.\033[0m"
else
    # display "test case 1 PASSED" to the screen. The word "PASSED" is highlighted in Green color
    echo -e "Test case 6    \033[1;92mPASSED.\033[0m"
    # remove the file 1.diff
    rm -f 6.diff
fi
# For test case 7
# input 3.txt and output 3.out
./${program} "input=input${group}7.txt;command=command${group}7.txt;output=output${group}7.txt" 1>1.stdcout 2>1.stderr
# compare 1.out with 1.ans, output the difference to 1.diff
diff -iEBwu ans${group}7.txt output${group}7.txt > 7.diff
# if diff returns nothing, it means you pass the test case (Your ourput file 1.out is correct)
if [ $? -ne 0 ]; then
    # display "test case 1 FAILED" to the screen. The word "FAILED" is highlighted in Red color
    echo -e "Test case 7    \033[1;91mFAILED.\033[0m"
else
    # display "test case 1 PASSED" to the screen. The word "PASSED" is highlighted in Green color
    echo -e "Test case 7    \033[1;92mPASSED.\033[0m"
    # remove the file 1.diff
    rm -f 7.diff
fi
# For test case 8
# input 3.txt and output 3.out
./${program} "input=input${group}8.txt;command=command${group}8.txt;output=output${group}8.txt" 1>1.stdcout 2>1.stderr
# compare 1.out with 1.ans, output the difference to 1.diff
diff -iEBwu ans${group}8.txt output${group}8.txt > 8.diff
# if diff returns nothing, it means you pass the test case (Your ourput file 1.out is correct)
if [ $? -ne 0 ]; then
    # display "test case 1 FAILED" to the screen. The word "FAILED" is highlighted in Red color
    echo -e "Test case 8    \033[1;91mFAILED.\033[0m"
else
    # display "test case 1 PASSED" to the screen. The word "PASSED" is highlighted in Green color
    echo -e "Test case 8    \033[1;92mPASSED.\033[0m"
    # remove the file 1.diff
    rm -f 8.diff
fi
# For test case 5
# input 3.txt and output 3.out
./${program} "input=input${group}9.txt;command=command${group}9.txt;output=output${group}9.txt" 1>1.stdcout 2>1.stderr
# compare 1.out with 1.ans, output the difference to 1.diff
diff -iEBwu ans${group}9.txt output${group}9.txt > 9.diff
# if diff returns nothing, it means you pass the test case (Your ourput file 1.out is correct)
if [ $? -ne 0 ]; then
    # display "test case 1 FAILED" to the screen. The word "FAILED" is highlighted in Red color
    echo -e "Test case 9    \033[1;91mFAILED.\033[0m"
else
    # display "test case 1 PASSED" to the screen. The word "PASSED" is highlighted in Green color
    echo -e "Test case 9    \033[1;92mPASSED.\033[0m"
    # remove the file 1.diff
    rm -f 9.diff
fi



