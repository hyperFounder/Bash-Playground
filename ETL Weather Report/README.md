## Scenario

You've been tasked by your team to create an automated Extract, Transform, Load (ETL) process to extract daily weather forecast and observed weather data and load it into a live report to be used for further analysis by the analytics team. As part of a larger prediction modelling project, the team wants to use the report to monitor and measure the historical accuracy of temperature forecasts by source and station.

- As a proof-of-concept (POC), you are only required to do this for a single station and one source to begin with. For each day at noon (local time), you will gather both the actual temperature and the temperature forecasted for noon on the following day for Casablanca, Morocco.

- At a later stage, the team anticipates extending the report to include lists of locations, different forecasting sources, different update frequencies, and other weather metrics such as wind speed and direction, precipitation, and visibility.


## Learning Objectives

After completing this practice project, you will be able to apply your new shell scripting skills in a real-world scenario to:

- Download raw weather data
- Extract data of interest from the raw data
- Transform the data as required
- Load the data into a log file using a tabular format
- Schedule the entire process to run automatically at a set time daily

### Data source

For this practice project, you'll use the weather data package provided by the open source project wttr.in, a web service that provides weather forecast information in a simple and text-based format.

- First, you'll use the curl command to scrape weather data via the wttr.in website. For example, to get data for Casablanca, enter:

```
curl wttr.in/casablanca
```
- which prints the following to stdout:

<img class="h-auto max-w-full"  width="45%" height="17%" src="ETL Weather Report/img/img.png" alt="image description">

### Weather reporting tasks

You must extract and store the following data every day at noon, local time, for Casablanca, Morocco:

- The actual temperature (in degrees Celsius)
- The forecasted temperature (in degrees Celsius) for the following day at noon

Here is an example of what the the resulting weather report should look like:

<img class="h-auto max-w-full"  width="45%" height="17%" src="ETL Weather Report/img/table.png" alt="image description">
