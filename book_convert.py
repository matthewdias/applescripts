import sys
import os
import pipes

path = sys.argv[1]
books = []
exts = [".pdf", ".mobi"]
convert = "/Applications/calibre.app/Contents/console.app/Contents/MacOS/ebook-convert"

for root, dirs, files in os.walk(path):
    for f in files:
        if os.path.splitext(f)[1] in exts:
            books.append(os.path.join(root, f))

for book in books:
    name, ext = os.path.splitext(book)
    filename = pipes.quote(name)
    os.system(convert + " " + filename + ext + " " + filename + ".epub")
    os.remove(name + ext)

