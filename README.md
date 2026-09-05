# Sample E-Commerce Funnel Analysis

## Overview
This project analyzes user behavior across e-commerce purchase funnel from site entry, to check out, to purchase.
Using SQL on Google's sample E-commerce dataset via BigQuery rather than just reporting the conversion rate, the analysis breaks down the funnel to identify exactly where users leave, and segments the results by device type for clear data.

## Question
Where in the purchase journey are we losing the most users, and does it vary by device?

## Key Findings
Desktop users convert from cart to purchase at **29.54%**, compared to **10.03%** for mobile, and **11.3%** for tablet.
This means desktop users complete their purchase at nearly **3x the rate** of mobile users, despite mobile driving more than half of desktop's total sessions (19,603 vs. 36,336 on desktop).
This points to a mobile checkout experience issue, not a demand issue. Mobile traffic exists, but the purchase flow has something that causes users abandon it.

