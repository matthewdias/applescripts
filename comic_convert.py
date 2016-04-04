import sys
import os
import pipes

path = sys.argv[1]
comics = []
exts = [".cbz", ".cbr"]
convert = "/Applications/calibre.app/Contents/console.app/Contents/MacOS/ebook-convert"

for root, dirs, files in os.walk(path):
    for f in files:
        if os.path.splitext(f)[1] in exts:
            comics.append(os.path.join(root, f))

for comic in comics:
    name, ext = os.path.splitext(comic)
    filename = pipes.quote(name)
    os.system(convert + " " + filename + ext + " " + filename + ".pdf")
    os.remove(name + ext)

