#!/usr/bin/env python
# Calculate Nixie tube pad coordinates

import numpy as np

# Kicad footprint editor has Y reversed Y coords
INVERT_Y = True

pin_count = 13
radius = 11.0/2		# mm
# Pin 1 is at [x,y] = [0,0]

angle = 2*np.pi/pin_count
pin_angles = np.arange(2*np.pi + np.pi/2, 0 + np.pi/2, -angle)

pin_coords = []

def pol2cart(theta, r):
	x = r * np.cos(theta)
	y = r * np.sin(theta)
	return [x, y]

for i in pin_angles:
	pin_coords.append(pol2cart(i, radius))

x_offset = pin_coords[0][0]
y_offset = pin_coords[0][1]

for i in range(len(pin_coords)):
	# Correct x offset
	pin_coords[i][0] = pin_coords[i][0] - x_offset
	pin_coords[i][1] = pin_coords[i][1] - y_offset

	if INVERT_Y == True:
		pin_coords[i][1] = -pin_coords[i][1]

n = 1
for i in pin_coords:
	print ("Pin %d :: x = %.2f y = %.2f (mm)" %(n, i[0], i[1]))
	n = n + 1
