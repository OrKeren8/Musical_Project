from xml.etree import ElementTree as ET
file_name = 'musicWithRoot.xml'
file = open('music.xml', 'r')
nfile = open(file_name, 'w')
lines = file.read().split('\n')
nfile.write(lines[0])
nfile.write('\n')
nfile.write(lines[1])
nfile.write('\n')
nfile.write('<root>\n')
for i in range(2,len(lines)):
    nfile.write(lines[i])
nfile.write('</root>\n')
file.close()
nfile.close()

dom = ET.parse(file_name)

notes = dom.findall('score-partwise/part/measure/note')
translate = {'16th' : 1/16,'eighth' : 1/8,'quarter' : 1/4, 'half' : 1/2, 'full' : 1.0}
inverseTranslate = {1/16 : '16th', 1/8 : 'eighth', 1/4 : 'quarter', 1/2 : 'half', 1.0 : 'full'}
refrence = -1

#Finds Refrence of duration 1 - i.e. base tempo
for note in notes:
    try:
        if note.find('duration').text == '1':
            refrence = translate[note.find('type').text]
            break
    except:
        refrence = 1
        break
#Loop through all the notes
for note in notes:
    length = int(note.find('duration').text) * (refrence)
    #find if a length of a note is too big i.e. more then one measure
    if not length in inverseTranslate.keys():
        key_list = list(inverseTranslate.keys())
        for i in range(len(key_list)):
            if not length > key_list[i]:
                length = key_list[i-1]
                break
            
    #If the current note is not a rest, print its pitch, and octave
    if note.find('rest') == None:
        step = note.find('pitch/step').text
        octave = note.find('pitch/octave').text
        print('{0} {1}  - {2}'.format(step, octave, inverseTranslate[length]))
    #Otherwise, print the rest with its duration
    else:
        print('rest - {0}'.format(inverseTranslate[length])) 
        pass
print('success!')


