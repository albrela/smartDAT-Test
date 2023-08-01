MF_FILENAME = 'SIM2500.mf.xml'

import xml.etree.ElementTree as ET
mytree = ET.parse(MF_FILENAME)
myroot = mytree.getroot()
print(myroot)

mf_declaration = myroot.findall("./declaration/*")
print(len(mf_declaration))

mf_declaration = myroot.findall("./application/*")
print(len(mf_declaration))

for child in mf_declaration:
    print(child.tag, child.attrib)
# for x in myroot["declaration"]:
#      print(x.tag, x.attrib)