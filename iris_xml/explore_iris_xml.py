# coding=utf-8
from xml.etree.ElementTree import iterparse, ParseError, XMLParser

import logging

logging.basicConfig()

filename = 'IRISDATA_RESOURCES MODIFIED SINCE 04-01-2017.XML'
filename = 'IRISDATA_RESOURCES 04-17-2017.XML'

non_ascii_to_encode = {
    ' ': '&#160;',
    '¢': '&#162;',
    '§': '&#167;',
    '®': '&#174;',
    '·': '&#183;',
    '½': '&#189;',
    '¾': '&#190;',
    'é': '&#233;',
    '–': '&#8211;',
    '—': '&#8212;',
    '‘': '&#8216;',
    '’': '&#8217;',
    '“': '&#8220;',
    '”': '&#8221;',
    '•': '&#8226;',
    '…': '&#8230;',
    '™': '&#8482;',
}

# Open entire file at once
# with open(filename, 'rt') as f:
#     tree = ElementTree.parse(f)
#
# for node in tree.iter('outline'):
#     name = node.attrib.get('text')
#     url = node.attrib.get('xmlUrl')
#     if name and url:
#         print '  %s :: %s' % (name, url)
#     else:
#         print name

# Use less memory
xml_iterator = iterparse(filename, events=['start'], parser=XMLParser(encoding='utf-8'))

while True:
    try:
        event, node = xml_iterator.next()
        print node.tag
    except ParseError:
        logging.exception('')
        raise
    # if 'cursor' not in node.tag:
    #     continue
