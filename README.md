# Education_correlation_project
This project aimed to investigate the relationship between parental education and the educational attainment of their children. Through data visualization and statistical interpretation, the study revealed whether there is, and if so, what it looks like, the correlation between our education and our
parents’.

Analyzed data are coming from survey Bilans Kapitału Ludzkiego (BKL) carried out in Poland in 2017 and 2019 on Polish citizens in aged 18-69. The study I focused on is conducted in the form of an approximately 40-minute telephone survey. The respondent answers, among others: for questions about age, place of residence, education, current profession and history professional qualifications, health condition, earnings, family information.
In the whole research surveyed is called a “child” for simplicity and it does not mean that respondents are minor, they are in age between 18-69. Each respondent (“child”) was answering what level of education his/her parents achieved and what level of education she/he has.
The analysis was conducted using the R programming language, applying Correspondence Data Analysis (CDA) to explore potential correlations and patterns within the data. My final result was following perception
map:

<img width="638" height="430" alt="perception_map" src="https://github.com/user-attachments/assets/2f477888-6cce-4b49-8014-c7c77f8fac7b" />

The yellow color stands by education of “children” and purple ones are parents’ levels of education. The shortcuts (which are in polish because whole project was written in this language) mean appropriately:
● dzieckoGim/rodziceGim - child/parents with lower secondary education or below
● dzieckoZawodowe/rodziceZawodowe - child/parents with vocational education
● dzieckoSrednie/rodziceSrednie - child/parents with high school education
● dzieckoIstopien/rodziceIstopien - child/parents with bachelor or engineering degree
● dzieckoIIstopien/rodziceIIstopien - child/parents with master degree or higher.

From the perception map we can see that on average a child has one level higher
education than his/her parents. This final observation I have illustrated by the chart
below:

<img width="1350" height="629" alt="correlation_plot" src="https://github.com/user-attachments/assets/cf183155-2c7c-4119-a230-9c2f5dbc96be" />

The y-axis represents the child's education and the x-axis shows the parents' education.
Shortcuts mean appropriately:
● gim_i_ponizej - child/parents with lower secondary education or below
● zawodowe - child/parents with vocational education
● srednie - child/parents with high school education
● I_stopnia - child/parents with bachelor or engineering degree
● II_stopnia_i_powyzej - child/parents with master degree or higher.
As we can see - "extreme" levels of education among parents (lower secondary school and lower, and second degree and higher) correlate with their counterparts in children. In other cases (vocational education, high school education and first degree) the average child has one level higher education.
