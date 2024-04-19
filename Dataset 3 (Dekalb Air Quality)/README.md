# README - EPA Air Quality Data (Dataset 3)

<!-- TABLE OF CONTENTS -->
<details>
  <summary>Table of Contents</summary>
  <ol>
    <li>
      <a href="#about-the-project">About The Project</a>
      <ul>
        <li><a href="#built-with">Built With</a></li>
      </ul>
    </li>
    <li>
      <a href="#getting-started">Getting Started</a>
      <ul>
        <li><a href="#prerequisites">Prerequisites</a></li>
        <li><a href="#installation">Installation</a></li>
      </ul>
    </li>
    <li><a href="#usage">Usage</a></li>
    <li><a href="#roadmap">Roadmap</a></li>
    <li><a href="#contributing">Contributing</a></li>
    <li><a href="#license">License</a></li>
    <li><a href="#contact">Contact</a></li>
    <li><a href="#acknowledgments">Acknowledgments</a></li>
  </ol>
</details>


<!-- ABOUT THE PROJECT -->
## About

This README is for the analysis and code for the DeKalbAQI Dataset corresponding to research question 3 of the S. Dekalb Project:


3. How have levels of key air pollutants, such as PM2.5 and Ozone changed over the past 7 years?

This dataset provides access to air quality information gathered from outdoor monitors throughout the United States by the EPA, referred to as AirData.

"Q3Clean.R" - This R script is designed to analyze Air Quality Index (AQI) data for several counties in Georgia from 2016 to 2023. It focuses on DeKalb, Henry, and Clayton counties, extracting data from annual CSV files, analyzing trends in PM2.5 and ozone levels, and visualizing these trends using ggplot2 and plotly for interactive plots.

"Q3AirQualityDekalb.R" - This R script is designed to visualize Air Quality Index (AQI) data, specifically focusing on PM2.5 and ozone levels across several counties in Georgia, namely DeKalb, Henry, and Clayton. The script uses the `ggplot2` and `plotly` libraries to create both static and interactive plots.



<p align="right">(<a href="#readme-top">back to top</a>)</p>
 

### Built With

- R (Visualization for dataset 3)

<p align="right">(<a href="#readme-top">back to top</a>)</p>



<!-- GETTING STARTED -->
## Getting Started

Download files in "dekalbAQI_RAW" file from data repository in order to run the code in "Q3Clean.R".
Download "dekalbAQI.csv" from data repository in order to run the code in "Q3AirQualityDekalb.R"

### Prerequisites

* R programming language
* R libraries: ggplot2, plotly
* Input data files: AQI data for DeKalb, Henry, and Clayton counties


### Installation

Before running the script, you need to install the required R packages. You can do this using the following commands in R:

```R
install.packages("ggplot2")
install.packages("plotly")

<p align="right">(<a href="#readme-top">back to top</a>)</p>



<!-- USAGE EXAMPLES -->
## Usage

- Screenshot of interactive map
- Screenshot or link to data story

<p align="right">(<a href="#readme-top">back to top</a>)</p>



<!-- ROADMAP -->
## Roadmap

For each research question, to create a cohesive data story, we will:
- [x] Identify and analyze the relevant dataset
    - [x] Create a subset of data to contain only Georgia or Dekalb
- [x] Create a data visualization (interactive or otherwise)
    - [x] Contaminant Type Selection
    - [x] Time series or county comparison
- [ ] Relay health impacts
    - [ ] Include a summary of the health impacts of high exposure to the contaminant type
    - [ ] Outline actions community members can take
     
Project Plan: https://docs.google.com/document/d/1Fk13lB-NPpDvnWYr1P8-melwuqHeQFxDNx5mgyd4cW8/edit?usp=sharing

Datastory Draft: https://docs.google.com/document/d/1amH2_ZUWezUnnM1W37NR9Ed7yuLsFNm9FxuZsxaY3WQ/edit?usp=sharing

See the [open issues](https://github.com/sci4ga/south-dekalb/issues) for a full list of proposed features (and known issues).

<p align="right">(<a href="#readme-top">back to top</a>)</p>



<!-- CONTRIBUTING -->
## Contributing

*What we COULD say:*

Contributions are what make the open source community such an amazing place to learn, inspire, and create. Any contributions you make are **greatly appreciated**.

If you have a suggestion that would make this better, please fork the repo and create a pull request. You can also simply open an issue with the tag "enhancement".
Don't forget to give the project a star! Thanks again!

1. Fork the Project
2. Create your Feature Branch (`git checkout -b feature/AmazingFeature`)
3. Commit your Changes (`git commit -m 'Add some AmazingFeature'`)
4. Push to the Branch (`git push origin feature/AmazingFeature`)
5. Open a Pull Request

<p align="right">(<a href="#readme-top">back to top</a>)</p>



<!-- LICENSE -->
## License

Distributed under the _____ License. See  for more information.

<p align="right">(<a href="#readme-top">back to top</a>)</p>



<!-- CONTACT -->
## Contact

Project Authors: Camilla Yoon, Minh-Thy Tyler, and Liane Muir

Project Link: [https://github.com/sci4ga/south-dekalb](https://github.com/sci4ga/south-dekalb)

<p align="right">(<a href="#readme-top">back to top</a>)</p>



<!-- ACKNOWLEDGMENTS -->
## Acknowledgments

* []()
* []()
* []()

<p align="right">(<a href="#readme-top">back to top</a>)</p>


