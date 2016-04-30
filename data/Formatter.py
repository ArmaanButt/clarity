import sys

def formatter():
    data = open('./courses.json','rt', encoding='latin1')
    formatted = open('formattedcourses.json', 'wt', encoding='latin1')
    formatted.write("[")

    read = data.readline()

    while(read):
        formatted.write(read +",\n")
        read = data.readline();

    formatted.write("]")
    
