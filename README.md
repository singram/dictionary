# dictionary
Full english dictionary

## What

A full english dictionary extracted from OPTED which is a public domain English word list dictionary, based on the public domain portion of "The Project Gutenberg Etext of Webster's Unabridged Dictionary" which is in turn based on the 1913 US Webster's Unabridged Dictionary. (See Project Gutenburg)

The only usage conditions are that if the material is redistributed, the content (not the formatting) remain in the public domain (ie free) and that the content be easily accessible in non-encoded plain text format at no cost to the end user. The origin of the content should also be acknowledged, including OPTED, Project Gutenburg and the 1913 edition of Webster's Unabridged Dictionary. If the material is to be included in commercial products, Project Gutenburg should be contacted first. There are no restrictions for personal or research uses of this material.

This material has been parsed from it's original form into a JSON structured dictionary along with unique word lists via the ruby `download.rb` script.

## Dev notes

While the derivative resources are available direct, to regenerate for whatever reason run the following

    cd english
    bundle install
    bundle exec ruby ./download.rb

## Credits
http://www.mso.anu.edu.au/~ralph/OPTED/

## Inspriation
http://www.bragitoff.com/2016/03/english-dictionary-in-csv-format/
