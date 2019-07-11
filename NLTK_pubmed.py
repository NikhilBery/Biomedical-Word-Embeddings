from nltk.corpus import stopwords
import os

print(os.getcwd()) # printing current working directory just to be sure

stop_words = set(stopwords.words('english')) #getting a list of all stop words to remove
file1 = open("../../abstracts_filtered.txt","r") #opening the file located at the same level as git repo
appendFile = open('../../abstracts_filtered2.txt','w') #creating an output file on the same location as the input
for line in file1.readlines(): #looping over every line in inputfile
	#words = line.split() 
	for r in line.split(): 
		if not r in stop_words: #looping over each variable
			appendFile.write(" "+r)
	appendFile.write("\n") # writing a new line once the entire line has been parsed
appendFile.close() # closing connection to the outputfile
file1.close() # closing connection to inputfile
