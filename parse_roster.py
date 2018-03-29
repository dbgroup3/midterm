#!/usr/bin/env python
import re
import csv

def parse_roster(filename):
	with open(filename, 'r') as fp:
		with open('roster.csv', 'wb') as csvfile:
			filewriter = csv.writer(csvfile, delimiter=',')
			line = fp.readline()
			while line:
				line = re.split(r'\t+', line)
				fname = [x.strip() for x in line[1].split(',')]
				lname = fname[0]
				fname = fname[1]
				height_feet = line[3].split('-')[0]
				height_inches = line[3].split('-')[1]
				city = line[6].split('/')[0]
				state = city.split(',')[1]
				state = state[1]+state[2] #properly strip whitespace here
				city = city.split(',')[0]
				row = [line[0], lname, fname, line[2], height_feet, height_inches, line[4], line[5], city, state]
				filewriter.writerow(row)
				line = fp.readline()


if __name__ == '__main__':
	parse_roster("fb_roster.txt")