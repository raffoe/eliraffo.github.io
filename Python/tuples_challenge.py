# Given the tuple below that represents the Imelda May album "More Mayhem", write
# code to print the album details, followed by a listing of all the tracks in the album.
#
# Indent the tracks by a single tab stop when printing them (remember that you can pass
# more than one item to the print function, separating them with a comma).

imelda = "More Mayhem", "Imelda May", 2011, (
    (1, "Pulling the Rug"), (2, "Psycho"), (3, "Mayhem"), (4, "Kentish Town Waltz"))

for i in range(0, (len(imelda)-1)):
    print(imelda[i])
for i in imelda[-1]:
    tracks, title = i
    print('\t Track: {0}, Title: {1}'.format(tracks, title))

