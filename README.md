# 555 Timer for Tiny Tapeout 6
 
  ## About
 This project emulates the functionality of the classic 555 Timer IC. 
  
 ## Why
 
Blinking an LED with a 555-Timer has represented the 'Hello World' for beginner electronics enthusiasts for a long time. Tiny Tapeout 6 is a milestone in hobbyist IC design. See "History" for some schematics of the original!

  ## Layout
![Layout](./docs/555_layout.png)

## Schematics
The transistor-level-implementation of this circuit is much different than what is actually inside of a 555 Timer.

See the section below "History" to see the original.

Below is my version:


![Schematic](./docs/timer_core_schematic.PNG)

Inside of the comparators is a classic CMOS comparator topology which can be found in many texts:

![Comparator](./docs/comp_p_schem_vs_layout.PNG)

## Operation

A 555-Timer is nothing more than a couple of comparators, an internal voltage divider (5kOhm x 3 in the original, which is where the marketing guys got their inspiration for its name), an SR latch and an open-drain transistor.

This collection of components has been used to cleverly implement all different kinds of functions. See the datasheet for the CMOS version here: https://www.ti.com/lit/gpn/LMC555.

Figure 7-5 from the above datasheet shows the 555 timer connected as an "astable multivibrator" meaning it runs as an oscillator.

![Texas Instruments Datasheet Figure](./docs/555_datasheet_fig7p5.PNG)

The frequency of oscillation as well as the duty cycle are a function of Ra, Rb, and C -- independent of supply voltage!


## Simulation and Post-Layout Verification

Below I show my testbench which replicates the above circuit shown in Fig. 7-5.

X1 is the schematic version of the design. X2 is the full RC extracted netlist.

![Simulation Schematic](./docs/tb_tt_um_vaf_555_timer_astable_schematic.PNG)


![Simulation Results](./docs/tb_tt_um_vaf_555_timer_astable_results.png)

This comparator could also potentially be used as a piece of stand-alone IP. Below are some Monte-Carlo results where I measured
the offset and hysteresis at TYP.

![Comparator simulations](./docs/comp_p_simulations.PNG)

## How to run the top-level simulation yourself

If you'd like to run the top-level simulation, simply do the following:

``` bash
cd ~
mkdir projects
cd projects
git clone git@github.com:vincentfusco/tt06_555
cd tt06_555/xsch
xschem ./tb/tt_um_vaf_555_timer/tb_tt_um_vaf_555_timer_astable.Schematic
```

## History

The inventor of the original 555 Timer was Hans Camenzind. The idea came from work he did on PLLs while at Signetics (Phillips) in the era when circuit layout was done by hand by cutting Rubylith. 

At Signetics, Hans needed an oscillator whose frequency could
be set by an external resistor and capacitor which was not affected by changes in supply voltage or temperature. 

He quit Signetics and decided to try to make this product a reality.

His original design was the NE566 Voltage-Controlled Oscillator:

![566 Oscillator](./docs/566_oscillator.PNG)

In short, this circuit works by charging a capacitor Cext, with a constant-current I = (1/6)Vcc.

Charging a capacitor with a constant current gives a linear ramp.

The capacitor charges between the two thresholds set by Comp. 1 and Comp. 2.

As the capacitor voltage crosses the threshold for each capacitor, set by the 5k Ohm resistor string (which is where the timer gets its name)
the current is steered to either charge or discharge the capacitor Cext.

Thus, the resulting capacitor waveform is a triangle wave which bounces between 1/3 Vcc and 2/3 Vcc.

The Vcc term in the current and the Vcc terms in the thresholds cancel, giving an expression for frequency ultimately independent of supply.

Hans later realized that he had made an incorrect assumption early on about needing the V-to-I converter. He had assumed that only a linear relationship between charge-current and end-voltage would cause Vcc-dependence cancellation, but this was wrong. 

He modified the 556, removing the V-to-I, and the 555 was born. The original schematic circuit is shown below:

![555 Original](./docs/555_original.PNG)

And a 5V-CMOS verion was later created.

![555 CMOS](./docs/555_cmos.PNG)

Hans Camenzind was a legendary analog IC designer. His book is free for download and is available at:
http://www.designinganalogchips.com/.