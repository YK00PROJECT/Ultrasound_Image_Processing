# README: Greyscale Imaging in Ultrasound

## Introduction

This project focuses on the application of B-mode (Brightness mode) ultrasound, which produces a two-dimensional image based on the variations in the brightness of returning echoes. The technology operates on the pulse-echo principle, where echoes returning to the transducer provide data about the location and characteristics of the target within the body.

A key aspect of this study involves exploring the ultrasound system's capabilities at different frequencies, assessing both axial and lateral spatial resolutions and contrast using a clinical portable ultrasound scanner. Through a series of structured experiments with a tissue-mimicking phantom, this project aims to optimize and understand the scanner's performance parameters.

## Objective

The main objective was to familiarize ourselves with the operational nuances of a portable clinical ultrasound scanner and to empirically determine its axial and lateral spatial resolutions, as well as contrast capabilities at frequencies of 2 MHz and 4 MHz.

## Method

The experiments involved:
1. Utilizing a calibrated tissue-mimicking phantom to simulate real tissue conditions.
2. Adjusting the ultrasound settings (depth, gain, TGC, dynamic range) and aligning the probe accurately to target the desired areas.
3. Capturing images at different settings, and subsequently analyzing these images for spatial resolution and contrast using MATLAB.

Key operational steps included turning on the machine, adjusting probe settings, and manipulating image capture and analysis settings.

## Materials

- Portable ultrasound scanner
- Multi-frequency convex array probe
- Calibrated tissue-mimicking phantom
- External USB drive for image transfer

## Results

### Spatial Resolution
- **2 MHz Image**: Axial resolution = 29.4377, Lateral resolution = 30.6159
- **4 MHz Image**: Axial resolution = 61.0667, Lateral resolution = 60.4266

The results demonstrate higher spatial resolution at 4 MHz compared to 2 MHz, indicating a frequency-dependent enhancement in image clarity.

### Contrast
- **2 MHz Image**: Higher contrast noted compared to 4 MHz, facilitating better differentiation between different tissue types at a lower frequency.

## Discussion

Through the use of the Field II simulation tool in MATLAB, we measured the contrast and spatial resolution, which indicated higher resolution and slightly lower contrast at higher frequencies. The detailed MATLAB code provided is used for processing the images to evaluate these parameters, employing techniques such as nearest interpolation, bilinear interpolation, and image quantization.

## MATLAB Code Samples

Included in the repository are various MATLAB scripts used to analyze the captured images:
- Image intensity and contrast analysis
- Spatial resolution calculation
- Image resizing and interpolation methods for detailed comparisons

## Conclusion

The experiment successfully demonstrated the capacity of the ultrasound scanner to delineate fine details at higher frequencies, with a trade-off in contrast at lower frequencies. These insights could guide the effective use of ultrasound technology in clinical settings, optimizing image quality based on diagnostic needs.

## References

1. Peter R. Hoskins, Kevin Martin, Abigail Thrush. Diagnostic Ultrasound. (2010) ISBN: 9781139488907
2. Bob Jarman. Emergency Point-of-Care Ultrasound. (2017) ISBN: 9780470657577

---

**Note:** All MATLAB code and image data used in this project are included in this repository for further reference and reproducibility of the analysis.
