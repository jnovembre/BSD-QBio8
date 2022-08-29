## Welcome

This page contains important information about the [Eighth BSD-qBio Boot Camp](https://biosciences.uchicago.edu/content/mbl-bootcamp), which will be held on campus from Sept 8-14, 2022.

More than 100 incoming graduate students from the different programs in the [Division of Biological Sciences](https://biosciences.uchicago.edu) at the [University of Chicago](https://www.uchicago.edu) will participate.

On this page, you find the instructions on how to **prepare your laptop** so that it's ready for the boot camp.

You should also **take a look at the data and the code** we will explore in the workshops and tutorials.

You can see the **schedule** of the boot camp, and find the contact information for the directors.

## Contacts

For any issue/question/comment, please contact the course directors via email:

*   [John Novembre](mailto:jnovembre@uchicago.edu?Subject=Help%20BSD%20QBio) ([webpage](http://jnpopgen.org/))
*   [Peter Carbonetto](mailto:pcarbonetto@uchicago.edu?Subject=Help%20BSD%20QBio) ([webpage](https://cobeylab.uchicago.edu))

## Instructors

* Jeremy Berg ([webpage](http://www.jjbpopgen.org))
* Peter Carbonetto ([webpage](https://pcarbo.github.io/))
* Lin Chen ([webpage](https://home.uchicago.edu/lchen11/))
* Mengjie Chen ([webpage](https://www.mengjiechen.com))
* Aly Khan ([webpage](https://ttic.uchicago.edu/~aakhan/))
* John Novembre ([webpage](http://jnpopgen.org/))
* Aarti Venkat ([webpage](https://biologicalsciences.uchicago.edu/faculty/aarti-venkat))

## TAs

* Jennifer Blanc
* Cody Cole
* Annisa Dea
* Taylor Hains
* Flora Plessier
* Jelena Scepanovic
* Matt Schechter
* Qi Zhan

## Schedule

The qBio boot camp will be, as the name implies, quite intense. We are going to have **Tutorials** (short primers to a certain topic) and **Workshops** (discipline-specific, hands-on activities).

Here's the [general schedule](https://github.com/jnovembre/BSD-QBio8/raw/master/schedule/GeneralSchedule.pdf).

You can also browse the schedule [by group](https://github.com/jnovembre/BSD-QBio8/tree/master/schedule).

## Computing tutorials

To accommodate the diverse background of our students, we have created two tracks for the computing tutorials.

*   Basic Computing I and II: dedicated to new users who are not familiar with `R` or programming in general. It will guide students step-by-step, introducing the `R` syntax and showing how to write well-organized code for data analysis and scientific research.
*   Advanced Computing I and II: dedicated to experienced `R` users, thesee will focus on manipulating large data sets, plotting, and the use of regular expressions.

**You will need to decide which track's sessions to attend on Day 1 of the Bootcamp**.  After Day 1, you will move throught the material in teams with mixed skill levels.  **Choose which track to join for Day 1 by consulting the lecture materials and making sure that the content is at the right level for you**:

* Basic Computing I ([web](https://github.com/jnovembre/BSD-QBio8/blob/main/tutorials/basic_computing_1/basic_computing_1.pdf), [pdf](https://raw.githubusercontent.com/jnovembre/BSD-QBio8/main/tutorials/basic_computing_1/basic_computing_1.pdf))
* Basic Computing II ([web](https://github.com/jnovembre/BSD-QBio8/blob/main/tutorials/basic_computing_2/basic_computing_2.pdf), [pdf](https://raw.githubusercontent.com/jnovembre/BSD-QBio8/main/tutorials/basic_computing_2/basic_computing_2.pdf))
* Advanced Computing: **Special preparation for Advanced Computing:** You should work through the Advanced Computing preparatory material before the session begins. [Link to preparatory material](https://github.com/jnovembre/BSD-QBio8/blob/master/tutorials/advanced_computing/tutorial/advanced_computing.pdf)


## Preparing your laptop

We are going to start working right away. Therefore, it is very important you **prepare your laptop** for the boot camp before the first session on Thursday. This will take you about one hour, so schedule accordingly.

You will work on your laptop all day long. **If you don't have a laptop, please contact the course directors immediately**.

### Installation of `R` and `R` packages

*   **Install R**: go to [this page](https://cran.rstudio.com/), download the file corresponding to your platform, and install it. (Here's a [video](https://www.youtube.com/watch?v=5ZbjUEg4a1g) explaining how to install R and RStudio in Windows; [here](https://www.youtube.com/watch?v=5rp9bkc68y0) for Mac OSX)

*   **Install RStudio**: once installed R, go to [this page](https://www.rstudio.com/products/rstudio/download/), download the installer for your operating system (section **Installers for Supported Platforms**), and install the software.

*   Once installed R and RStudio, open RStudio and **install the following packages**:

    *   devtools
    *   tidyverse
    *   knitr
    *   workflowr
    *   ggthemes
	*   ggrepel
    *   cowplot
    *   Rtsne
    *   BiocManager
    *   ggseqlogo
    *   pheatmap
	*   plotly
	*   htmlwidgets

    You can find instructions on how to install `R` packages in RStudio [here](https://www.youtube.com/watch?v=3RWb5U3X-T8).

* **Other packages** After the package installs above, two more sets of the packages need to be installed using special installers within `R`. First, open Rstudio and in the Console type `library(remotes)`, hit Return (or Enter) and then `install_github("jdstorey/qvalue")`. This will install the library `qvalue` that is needed for one of the tutorials. Second, type `library(BiocManager)` hit Return (or Enter) and then,
`BiocManager::install(c("airway","Rsamtools","Rsubread","DESeq2","vsn", "org.Hs.eg.db","GenomicFeatures", "clusterProfiler"))`.  This should install 8 libraries that will be used for the RNAseq workshop.

* **UNIX Emulator**: If you are using Windows, you need to install a UNIX emulator. We suggest downloading the version control software `Git`, because it ships with a small emulator (`Git Bash`). Simply go to [this page](https://git-scm.com/download/win) and follow the instructions.

* **Git**
    * **Join GitHub** click [here](https://education.github.com/pack) and make sure you use your uchicago email to get free tools.
    * **Download GitKraken** click [here](https://support.gitkraken.com/how-to-install)

## Downloading the data

It is very important to download the data **before the workshop**, as the files are quite large. (Warning! The repo is >200MB!)
All you need to do is to download the repository containing all the boot camp lectures and data.

The simplest way to download the repository is to down the ZIP file
(click
[here](https://codeload.github.com/jnovembre/BSD-QBio8/zip/refs/heads/main))
then unzip the ZIP file. (This is a large file, so may take a few
minutes or more to download depending on your connection speed.)

Alternatively, you can use GitKraken (or command-line `git` if you are
already familiar with it):

1. Open GitKraken (see download link above)
2. Login with your GitHub account (see instructions and link above)
3. "Clone a Repo" (in File menu)
4. "Clone with URL"
5. "Where to Clone:" Browse to the folder in which you want to keep your repository (your home directory is fine)
6. "URL": Paste: `https://github.com/jnovembre/BSD-QBio8.git`
7. "Clone the Repo!" (this step will take a few minutes)

Now if you go to the folder you chose in step 5, you'll see the repository!

## Programming Challenges

During the boot camp, the 12 groups of students will compete through 5 programming challenges. Here are the links to the webpages where the groups should post their solutions (one answer per group, please):

[NOTE: PLEASE NOTE THESE LINKS NOT YET UPDATED FOR 2022]

* Submit your answer to [Programming Challenge 1 (Basic Programming I)](https://forms.gle/w93jnanysf8L8BXn9)
* Submit your answer to [Programming Challenge 2 (Basic Programming II)](https://forms.gle/pK13yMf3ac2pcJCh8)
* Sumbit your ansser to [Advanced Programming Challenge](https://forms.gle/QQgAMA88a7Jj9KtG7)
* Submit your answer for the tutorial on [Defensive Programming](https://forms.gle/DGGjcNQA5jFtBtVd7)
* Submit your answer for the tutorial on [Data Visualization](https://forms.gle/tvTZrn79bC8y7cPb9)
* Submit your answer for the tutorial on [Stats for large data](https://forms.gle/DrummMdTUbuCdTsQ9)

### Notes
This material is based upon work supported by the National Science Foundation under Grant Number 1734818

Any opinions, findings, and conclusions or recommendations expressed in this material are those of the author(s) and do not necessarily reflect the views of the National Science Foundation.
