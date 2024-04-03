# 555 Timer for Tiny Tapeout 6 #
 
## About ##
 This project emulates the functionality of the classic 555 Timer IC. 
  
## Why ##
 
Blinking an LED using a 555-Timer has long served as the 'Hello World' for novice electronics enthusiasts. With the ongoing improvement in open-source tools and the emergence of communities like Tiny Tapeout, analog chip design is now within reach for hobbyists, hackers, and other free individuals. In light of this, I decided to take on the challenge of building my own 555 on an IC to blink an LED the hard way.
 
## Layout ##
![Layout](./docs/555_layout.png)

## Operation ##

The 555 Timer is the most widely used analog IC ever made [1]. It was invented in the era of IC design when layout was still done by hand by cutting Rubylith.

Conceptually, a 555-Timer is nothing more than a couple of comparators, an internal voltage divider to set thresholds, an SR latch, and an open-drain transistor. It can be configured to be used in a variety
of timer, delay, pulse generation, and oscillator applications.

![555 Block Diagram](./docs/555_system_diagram.PNG)

In the figure above, the 555 Timer is configured as an astable multivibrator - a square-wave oscillator.

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

The basic functions described above can and have beeen implemented in different ways. 

The original BJT version and later CMOS counterpart with actual sizing given by the creator himself are given in [History](#history).

The tt06_555 implementation is shown below:

![Schematic](./docs/timer_core_schematic.PNG)

![Comparator](./docs/comp_p_schem_vs_layout.PNG)

## Simulation and Post-Layout Verification ##

Below is a top-level testbench with the tt06_555 configured in the oscillator mode described earlier. This testbench compares the outputs of the schematic vs. the full RC extracted netlists.

![Simulation Schematic](./docs/tb_tt_um_vaf_555_timer_astable_schematic.PNG){width=75%}

$$R_A = 1.78k\Omega$$
$$R_B = 4.12k\Omega$$
$$C = 0.01\mu F$$

![Simulation Results](./docs/tb_tt_um_vaf_555_timer_astable_results.png){width=75%}

From the earlier analysis with the values chosen above, we expect:

$$t_1 = 40.89\mu s$$
$$t_2 = 28.55\mu s$$
$$ f = 14.37kHz$$

The frequency measurement between the simulated schematic and the simulated extracted RC netlist match closely, as shown above.

If you'd like to run the top-level simulation, simply do the following:

``` bash
cd ~
mkdir projects
cd projects
git clone git@github.com:vincentfusco/tt06_555
cd tt06_555/xsch
xschem ./tb/tt_um_vaf_555_timer/tb_tt_um_vaf_555_timer_astable.Schematic
```

## Comparator ##

The comparator could also be used stand-alone in another application. Below a Monte Carlo simulation is run and the offset and hysteresis at TT around a 0.6V threshold are measured, showcasing some of the nice open-source toolflow and PDK capabilities now available:

![Comparator simulations](./docs/comp_p_simulations.PNG)

## History ##

The predecessor was the NE566 Voltage-Controlled Oscillator:

![566 Oscillator](./docs/566_oscillator.PNG){width=50%}

The voltage-to-current source wasn't actually needed. The 555 was born:

![555 Original](./docs/555_original.PNG){width=50%}

A 5V-CMOS verion was later created.

![555 CMOS](./docs/555_cmos.PNG){width=50%}

The free e-book written by original inventor, Hans Camenzind, can be found at [2].

## References ##

[1] https://computerhistory.org/blog/hans-camenzind-remembering-a-wizard-of-analog/

[2] http://www.designinganalogchips.com/.

![Hack The Planet](./docs/gibson.PNG)
