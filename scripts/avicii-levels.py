# Mapping of key numbers to notes
Fis1 = "00101110"
E1 = "00100100"
Dis1 = "00100110"
Cis2 = "01000110"
B1 = "00111100"
Cis1 = "00011110"
Gis1 = "00110110"

F0 = 0  # press the key
F1 = 1  # release the key

# output looks as follow:
# [[hexkeycode, start_timestamp, F0], [hexkeycode, end_timestamp, F0]]
# where:
# hexkeycode - hex value of a PS/2 scancode of the key which was pressed/released
# timestamp - time when it happened in ns
# F0 - 1 if key is being released, 0 otherwise (PS/2 standard)
# All None records are just for easier time calculation and will not be included

output = [
    [[Fis1, None, F0], [Fis1, None, F1]],
    [[E1, None, F0], [E1, None, F1]],
    [[E1, None, F0], [E1, None, F1]],
    [[None, None, None], [None, None, None]],
    [[E1, None, F0], [E1, None, F1]],
    [[E1, None, F0], [E1, None, F1]],
    [[E1, None, F0], [E1, None, F1]],
    [[E1, None, F0], [E1, None, F1]],
    [[Dis1, None, F0], [Dis1, None, F1]],
    [[Dis1, None, F0], [Dis1, None, F1]],
    [[E1, None, F0], [E1, None, F1]],
    [[E1, None, F0], [E1, None, F1]],
    [[None, None, None], [None, None, None]],
    [[Cis2, None, F0], [Cis2, None, F1]],
    [[B1, None, F0], [B1, None, F1]],
    [[Gis1, None, F0], [Gis1, None, F1]],
    [[Fis1, None, F0], [Fis1, None, F1]],
    [[E1, None, F0], [E1, None, F1]],
    [[E1, None, F0], [E1, None, F1]],
    [[None, None, None], [None, None, None]],
    [[E1, None, F0], [E1, None, F1]],
    [[E1, None, F0], [E1, None, F1]],
    [[E1, None, F0], [E1, None, F1]],
    [[E1, None, F0], [E1, None, F1]],
    [[Dis1, None, F0], [Dis1, None, F1]],
    [[Dis1, None, F0], [Dis1, None, F1]],
    [[Cis1, None, F0], [Cis1, None, F1]],
    [[Cis1, None, F0], [Cis1, None, F1]],
    [[None, None, None], [None, None, None]],
    [[Cis2, None, F0], [Cis2, None, F1]],
    [[B1, None, F0], [B1, None, F1]],
    [[Gis1, None, F0], [Gis1, None, F1]],
]

time = 1e6  # start time in nano seconds (equals 1ms)

step = 1 / 256  # 1/256 of a minute

for record in output:
    if record[0][0]:
        record[0][1] = f"{round(time)}ns"  # start time when the key is pressed
        release_time = round(time + 3 / 4 * step * 60 * 1e9)  # release time in ns
        record[1][1] = f"{release_time}ns"
    time += round(step * 60 * 1e9)


with open("levels.txt", mode="w") as file:
    for record in output:
        if record[0][0]:
            start_row_str = " ".join(str(e) for e in record[0])
            end_row_str = " ".join(str(e) for e in record[1])
            file.write(f"{start_row_str}\n")
            file.write(f"{end_row_str}\n")
