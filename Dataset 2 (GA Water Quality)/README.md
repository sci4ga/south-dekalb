# README - GA Water Quality Data Code


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

This README is for the analysis and code for the Dekalb Water Quality Dataset sourced from Dekalb Watershed Management corresponding to research question 2 of the S. Dekalb Project:


2. How have the levels of key water pollutant parameters (Fluoride, Nitrate, Chlorine, Trihalomethanes, Haloacetic Acids, Copper, Lead, Turbidity, Total Organic Carbon, and Total Coliform) in Dekalb County changed over recent years (2018-2022)?

This dataset compiles aggregated data on various water quality parameters, including Fluoride, Nitrate, Free Chlorine, Total Chlorine, Total Trihalomethanes, Total Haloacetic Acids, Turbidity, Total Organic Carbon, and Total Coliform, across multiple counties spanning from 2018 through 2022 in Dekalb.

This Shiny application provides an interactive visualization of water quality parameters in DeKalb County, Georgia. The data used in this app is based on various water quality tests performed over the years and includes a variety of parameters like Fluoride, Nitrate, Chlorine, THMs, and more.


<p align="right">(<a href="#readme-top">back to top</a>)</p>
 


### Built With

- R, Shiny (Visualization for dataset 2)

<p align="right">(<a href="#readme-top">back to top</a>)</p>

## Features

- **Interactive Plot**: View changes in water quality parameters over time.
- **Parameter Descriptions**: Detailed information about each water quality parameter, including health implications and EPA standards.
- **Searchable Parameter Selection**: Easy-to-use dropdown to select parameters, enhanced with a search feature.


<!-- GETTING STARTED -->
## Getting Started

Will include instructions on setting up the project locally.
To get a local copy up and running follow these simple example steps.


### Prerequisites

To run this Shiny app on your local machine, you need to have R installed, along with the Shiny package and other required libraries. 

### Installation
You can install the required libraries using the following commands in R:

```R
install.packages("shiny")
install.packages("shinythemes")
install.packages("shinyWidgets")
install.packages("ggplot2")
install.packages("plotly")
```


<p align="right">(<a href="#readme-top">back to top</a>)</p>



<!-- USAGE EXAMPLES -->
## Usage
Clone this repository or download the source code to your local machine.

Open the R script in RStudio or any other R environment.

Set the working directory to the folder containing the script.

The data for this application is stored in "DekalbWaterQuality.csv" which can be found in the data repository. 
This file should be placed in the same directory as the application script.

- Screenshot of interactive visualization
<img width="1087" alt="Screenshot 2024-04-19 at 4 14 52 PM" src="https://github.com/sci4ga/south-dekalb/assets/156953490/70965cb4-bcc8-408b-a774-7c7babf49459">

- link to data story: https://qtm-capstone-s-dekalb.shorthandstories.com/the-south-dekalb-data-story/

<p align="right">(<a href="#readme-top">back to top</a>)</p>



<!-- ROADMAP -->
## Roadmap

For each research question, to create a cohesive data story, we will:
- [x] Identify and analyze the relevant dataset
    - [x] Create a subset of data to contain only Georgia or Dekalb
- [x] Create a data visualization (interactive or otherwise)
    - [x] Contaminant Type Selection
    - [x] Time series or county comparison
- [x] Relay health impacts
    - [x] Include a summary of the health impacts of high exposure to the contaminant type
    - [x] Outline actions community members can take
     
Project Plan: https://docs.google.com/document/d/1Fk13lB-NPpDvnWYr1P8-melwuqHeQFxDNx5mgyd4cW8/edit?usp=sharing

Datastory Draft: https://docs.google.com/document/d/1amH2_ZUWezUnnM1W37NR9Ed7yuLsFNm9FxuZsxaY3WQ/edit?usp=sharing

See the [open issues](https://github.com/sci4ga/south-dekalb/issues) for a full list of proposed features (and known issues).

<p align="right">(<a href="#readme-top">back to top</a>)</p>



<!-- CONTRIBUTING -->
## Contributing

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


