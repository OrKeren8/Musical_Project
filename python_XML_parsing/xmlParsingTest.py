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
####
notes = dom.findall('score-partwise/part/measure/note')
translate = {'16th' : 1/16,'eighth' : 1/8,'quarter' : 1/4, 'half' : 1/2, 'full' : 1.0}
inverseTranslate = {1/16 : '16th', 1/8 : 'eighth', 1/4 : 'quarter', 1/2 : 'half', 1.0 : 'full'}
refrence = -1

for note in notes:
    if note.find('duration').text == '1' and note.find('rest') == None:
        refrence = translate[note.find('type').text]
        break

for note in notes:
    if note.find('rest') == None:
        step = note.find('pitch/step').text
        octave = note.find('pitch/octave').text
        length = int(note.find('duration').text) * refrence
        print('{0} {1}  - {2}'.format(step, octave, inverseTranslate[length]))
    else:
        length = int(note.find('duration').text) * refrence
        print('rest - {0}'.format(inverseTranslate[length])) 

print('success!')


