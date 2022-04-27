# Return the number (count) of vowels in the given string.
# We will consider a, e, i, o, u as vowels (but not y).
# The input string will only consist of lower case letters and/or spaces.

def get_count(s):
    counter = 0
    for i in s:
        if i in ('e', 'a', 'i', 'o', 'u'):
            counter = counter + 1
            # print(counter)
    return counter

print(get_count("hello there fine person"))