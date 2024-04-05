# An Open-Source 555 Timer #

## About ##
This circuit emulates the functionality of the classic 555-Timer IC. It was designed using open-source tools and will be taped-out in the Skywater 130nm CMOS process through [TinyTapeout](https://app.tinytapeout.com/shuttles/tt06) on April 19th 2024.
 
## Why ##
 
Blinking an LED using a 555-Timer has long served as the ["Hello World"](https://en.wikipedia.org/wiki/%22Hello,_World!%22_program) for novice electronics enthusiasts. With the ongoing improvement in open-source tools and the emergence of communities like TinyTapeout, analog chip design is now within reach for hobbyists, hackers, and other free individuals. 

In light of this, I decided to take on the challenge of building my own 555-style IC to learn the open-source flow, to see if I really could tape-out custom silicon for less than $250.00, and just for the fun of blinking an LED the hard way.
 
## Layout ##
![Layout](./docs/555_layout.png)

## Operation ##

Conceptually, a 555-Timer is nothing more than a couple of comparators, an internal voltage divider to set thresholds, an SR latch, and an open-drain transistor. It can be configured to be used in a variety
of timer, delay, pulse generation, and oscillator applications.

![555 Block Diagram](./docs/555_system_diagram.PNG)

In the figure above, the 555-Timer is configured as an astable multivibrator - a square-wave oscillator.

1. Suppose at startup the capacitor is at an initial voltage of 0V. S=H, R=L, Q=H, Qb=L. 

2. The capacitor will begin to charge through a time constant given by $\tau_h = (R_A+R_B)C$.

3.  When the capacitor crosses the $(1/3)V_{DD}$ mark, the bottom comparator will fire and: S=L, R=L, Q=Hold (H), Qb=Hold (L).

4. The capacitor continues to charge until it gets to $(2/3)V_{DD}$. The top comparator will fire and we get: S=L, R=H, Q=L, Qb=H.

5. The NFET is turned on, so the capacitor will immediately start discharging through a time constant $\tau_l = R_BC$.

6. As the capacitor voltage goes back below $(2/3)V_{DD}$, the top comparator will go low again. We have: S=L, R=L, Q=Hold (L), Qb=Hold (H).

7. The capacitor continues to discharge until it gets back down to $(1/3)V_{DD}$. The bottom capacitor will fire and we have: S=H, R=L, Q=H, Qb=L.

8. Now the NFET is off and the capacitor will begin charging again. As the capacitor begins charging we get: S=L, R=L, Q=Hold (H), Qb=Hold (L).

9. And the cycle continues.

Therefore, the frequency of oscillation and duty cycle are a function of the board designer's choice of RA, RB, and C. 

The amount of time that OUT is high is given by:

$$t_1 = \frac{(R_A+R_B)C}{\sqrt{2}}$$

The amount of time OUT is low:

$$t_2 = \frac{R_BC}{\sqrt{2}}$$

And the overall frequency:

$$f = \frac{\sqrt{2}}{(R_A+2R_B)C}$$

## Schematics ##

The architecture described above has been implemented in different ways throughout the 555-Timer's history. 

Schematics of the original BJT version and a later CMOS version can be found [here](#history).

This project's implementation is shown below:

![Schematic](./docs/timer_core_schematic.PNG)

And the schematic and layout for the comparator:

![Comparator](./docs/comp_p_schem_vs_layout.PNG)

## Simulation and Post-Layout Verification ##

Below is a top-level testbench with the tt06_555 configured in the oscillator mode described earlier. This testbench compares the outputs of the schematic vs. the full RC extracted netlists.

$$R_A = 1.78k\Omega$$

$$R_B = 4.12k\Omega$$

$$C = 0.01\mu F$$

From the earlier analysis with the values chosen above, we expect:

$$t_1 = 40.89\mu s$$

$$t_2 = 28.55\mu s$$

$$ f = 14.37kHz$$

![Simulation Schematic](./docs/tb_tt_um_vaf_555_timer_astable_schematic.PNG)

![Simulation Results](./docs/tb_tt_um_vaf_555_timer_astable_results.png)

The frequency measurement of the simulated schematic and extracted RC netlists match closely, as highlighted above. However, there is some deviation from the analytically predicted expression given earlier, perhaps due to the systematic offset in the comparator and/or the added resistance of the discharge FET. More information on the comparator can be found [here](./docs/COMP_P.md).
## How ##

If you'd like to run the top-level simulation for yourself, first [install xschem, ngspice, and the Skywater 130 PDK](https://www.youtube.com/watch?v=jXmmxO8WG8s) then type the following:

``` bash
cd ~
mkdir projects
cd projects
git clone git@github.com:vincentfusco/tt06_555
cd tt06_555/xsch
xschem ./tb/tt_um_vaf_555_timer/tb_tt_um_vaf_555_timer_astable.sch
```
Once Xschem opens, click the "Netlist" button, then click the "Simulate" button.

## History ##

The 555 Timer is the most widely used analog IC ever made [1]. It was invented by Hans Camenzind in an era of IC design when layout was still done by cutting [Rubylith](https://en.wikipedia.org/wiki/Rubylith) by hand.

Its predecessor was the NE566 Voltage-Controlled Oscillator:

![566 Oscillator](./docs/566_oscillator.PNG)

Camenzind later realized that the voltage-to-current converter wasn't actually needed. Charging and discharging of the capacitor could be done entirely with resistors and a supply-independent frequency could still be achieved. 

This led to the 555-Timer architecture which was shown above. The full schematic for the original 555 timer is shown below:

![555 Original](./docs/555_original.PNG)

A 5V-CMOS verion was later created.

![555 CMOS](./docs/555_cmos.PNG)

Read the full story of the chip's invention in the free e-book written by original inventor himself in [2].

## References ##

[1] https://computerhistory.org/blog/hans-camenzind-remembering-a-wizard-of-analog/

[2] http://www.designinganalogchips.com/.

![Hack The Planet](./docs/gibson.PNG)
