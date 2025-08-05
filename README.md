# 📉 Time Domain Analysis of Control Systems using MATLAB

This repository provides MATLAB code for performing **time-domain analysis** of five different control system transfer functions. The focus is on evaluating how variations in system poles and gain affect transient response characteristics and steady-state error for unit step inputs.

---

## 📌 Objective

To compute and visualize the **step responses** of various transfer functions and extract key time-domain specifications such as:

- Rise Time (Tr)
- Delay Time (Td)
- Peak Time (Tp)
- Settling Time (Ts)
- Overshoot (Mp)
- Steady-State Error (ess)

---

## 🔧 How to Use

1. Open MATLAB.
2. Place the file `lab5_time_response_analysis.m` in your working directory.
3. Run the script.
4. Step response plots and detailed metrics will be printed for each transfer function.

---

## 📁 Transfer Functions and Description

### ✅ TF1: \( G(s) = \frac{100}{10s} \)

- First-order system with a large gain and a pole at origin.
- Fast response, Type 1 system.
- **Zero steady-state error**, but relatively fast rise.

---

### ✅ TF2: \( G(s) = \frac{25}{s^2 + 25s} \)

- Second-order system, overdamped due to high damping term.
- Slower rise, no oscillation.
- Type 1 system, **zero steady-state error**.

---

### ✅ TF3: \( G(s) = \frac{25}{s^2 + 5s} \)

- Lower damping compared to TF2.
- **Underdamped system**, with oscillatory response and overshoot.
- Settling time is longer, but still zero steady-state error.

---

### ✅ TF4: \( G(s) = \frac{25}{s^2 + 10s} \)

- Intermediate damping between TF2 and TF3.
- Reduced overshoot compared to TF3, faster than TF2.
- Balanced trade-off in speed and damping.

---

### ✅ TF5: \( G(s) = \frac{25}{s^2} \)

- Ideal Type 2 system (double integrator).
- **Infinite steady-state gain** \(\Rightarrow\) **zero steady-state error**.
- Can be unstable or marginally stable; needs careful handling.

---

## 📊 Parameters Extracted per System

Each transfer function is analyzed to extract:

- **Rise Time (Tr)**: Time to rise from 10% to 90% of final value.
- **Delay Time (Td)**: Approx. 30% of rise time.
- **Peak Time (Tp)**: Time to reach the peak of overshoot.
- **Settling Time (Ts)**: Time to settle within 2% of final value.
- **Maximum Overshoot (Mp)**: Amount the response exceeds the final value.
- **Steady-State Error (ess)**: Computed using position error constant \(K_p = \text{dcgain}(G(s))\).

---

## 📘 Author

Prepared as part of the **Control Systems Lab (EC5)** at  
**PDPM IIITDM Jabalpur**  
by [@ex2uply](https://github.com/ex2uply)

---

## 📝 Notes

- Run in MATLAB Desktop for proper figure rendering.
- Consider saving figures using `saveas(gcf, 'filename.png')` inside the loop.
- Values printed in the console include all time-domain metrics and computed steady-state error.
