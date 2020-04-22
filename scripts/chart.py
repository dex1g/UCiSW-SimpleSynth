from typing import List
import matplotlib.pyplot as plt
import numpy as np
import matplotlib.ticker as ticker


def to_hex(x, pos):
    return "%x" % int(x)


with open("output_results.txt") as f:
    content = f.readlines()
values: List[int] = [int(x.strip(), 2) for x in content]
x = np.arange(start=0, stop=500, step=0.01)
y = np.array(values)
plt.plot(x, y, drawstyle="steps-mid")
ax = plt.gca()
fmt = ticker.FuncFormatter(to_hex)
ax.xaxis.set_major_locator(ticker.MultipleLocator(1))
ax.yaxis.set_major_formatter(fmt)
ax.set_xlabel("T(ms)")
ax.set_ylabel("Output signal")
ax.set_title("Basic wave")
# ax.set_ylim([0, 4000])
# ax.set_xlim([60, 70])
plt.show()
