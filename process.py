

# This is opening and reading the .txt file
log_file = open("um-server-01.txt")

# Creating a function
def sales_reports(log_file):
    # looping over the txt file
    for line in log_file:
        # removing any trailing character
        line = line.rstrip()
        # creating variable to dispay the day
        day = line[0:3]
        # if the day is tuesday
        if day == "Mon":
            # print the whole line for tues
            print(line)

# calling function witht he txt file
# sales_reports(log_file)




def ten(log_file):
    for line in log_file:
        line = line.rstrip()
        str = line[15:18]
        to_num = int(str)
        if to_num > 10:
            print(line)


        
ten(log_file)

