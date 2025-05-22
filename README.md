# NYSE data ETL using Hive

## Overview

- The requirement is to process the NYSE financial data in hive and store it as partitioned parquet files.
- NYSE financial data in zipped csv format.
- The data is periodically put into HDFS as a csv file.
- A python script is developed to simulate the incoming data into hdfs.
- A Hive script is developed to load the csv data into a hive staging table in csv format.
- From the stagging table data is loaded into parquet table with partitions.
- I have developed a shell script to execute the hive script and capture the logs.
- Using cron job the shell script is triggered in a regular interval.

## Contents

- **data/**: Directory containing sample data files.
- **app.hql**: Hive query scripts for data processing.
- **app.log**: Log file for tracking the execution of scripts.
- **cron.sh**: Shell script for scheduling tasks using cron jobs.
- **upstream_simulation.py**: Python script for simulating upstream data processes.
- **wrapper.sh**: Wrapper script for executing the entire data loading process.

## Usage

1. **Setup HDFS and Hive:**
   Ensure HDFS and Hive are properly configured and running on AWS EMR.

2. **Data Preparation:**
   Place your data files in the `data/` directory.

3. **Execute Scripts:**
   Run the upstream_simulator app to simulate the incoming data:
   ```bash
   python3 upstream_simulator.py
   ```

4. **Scheduling with Cron:**
   Use cron.sh to schedule the process
   ```bash
   sh cron.sh
   ```

## Contact
For any questions, issues, or suggestions, please feel free to contact the project maintainer:

GitHub: [Lashmanbala](https://github.com/Lashmanbala)

LinkedIn: [Lashmanbala](https://www.linkedin.com/in/lashmanbala/)
