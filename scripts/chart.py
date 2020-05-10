import matplotlib.pyplot as plt
import numpy as np
import matplotlib.ticker as ticker
import csv


def to_hex(x, pos):
    """ Used to display signal values in hex on plot"""
    return "%x" % int(x)


time_list, value_list = [], []

with open("output_results.txt") as f:
    for value, time in csv.reader(f, delimiter=","):
        # time in file is stored in nanoseconds as 30035 ns so strip
        # the suffix and convert to ms
        time_in_ms = int(time[:-3]) * 1e-6
        time_list.append(time_in_ms)
        # values are stored in normal binary
        value_list.append(int(value.strip(), 2))

x = np.array(time_list)
y = np.array(value_list)
plt.plot(x, y, drawstyle="steps-mid")
ax = plt.gca()
fmt = ticker.FuncFormatter(to_hex)
ax.xaxis.set_major_locator(ticker.MultipleLocator(1))
ax.yaxis.set_major_formatter(fmt)
ax.set_xlabel("T(ms)")
ax.set_ylabel("Output signal")
ax.set_title("Basic wave")
plt.show()
