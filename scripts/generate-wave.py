import wave
import struct
import csv
import numpy as np

sample_rate = 44100  # sample rate for wave file

signal_file = wave.open("signal.wav", "w")
signal_file.setparams((1, 2, sample_rate, 0, "NONE", "not compressed"))
# one channel (mono)
# sample width in bytes (shorts)
# sample rate
# number of frames in whole file (changed automatically later when writing)
# none compression
# compression description

time_list, value_list = [], []

with open("output_results.txt") as f:
    for value, time in csv.reader(f, delimiter=","):
        # time in file is stored in nanoseconds as 30035 ns so strip
        # the suffix and convert to ms
        time_in_ms = int(time[:-3]) * 1e-6
        time_list.append(time_in_ms)
        # values are stored in normal binary
        value_list.append(int(value.strip(), 2))

# step based on which we generate time points in which we sample the signal
step = 1 / sample_rate * 1000  # convert to miliseconds

# create a vector of time points in which we will sample the data
x = np.arange(0, time_list[-1], step)

# interpolation of the signal in order to properly sample the data
interpolated = np.interp(x, time_list, value_list)

# normalize the data
interpolated /= np.max(np.abs(interpolated))

values_to_write = []

for sample in interpolated:
    # pack each value to C struct
    # interpolated values are floats so convert them to ints with proper
    # value scaling. This scaling ensures that values in output wave file
    # are in -0.5 +0.5 range because we normal binary for values.
    # we multuply by 2^15 becase we pack our samples into shorts (h)
    packed_value = struct.pack("h", int(sample * (2 ** 15 - 1) - 2 ** 14))
    values_to_write.append(packed_value)

# convert them to one long byte stream
value_str = b"".join(values_to_write)

# save to file
signal_file.writeframes(value_str)

signal_file.close()
