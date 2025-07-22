# Education_correlation_project
This project aimed to investigate the relationship between parental education and the educational attainment of their children. Using statistical analysis and data visualization, the study explored whether a correlation exists, and if so, what it looks like, between a person’s education and that of their parents.

Analyzed data are coming from survey Bilans Kapitału Ludzkiego (BKL) carried out in Poland in 2017 and 2019 on Polish citizens in aged 18-69. The interview was conducted by telephone and lasted about 40 minutes. Respondents were asked questions including age, residence, education, current occupation and family information.

**NOTE**: In the whole research surveyed is called a “child” for simplicity and it does not mean that respondents are minor, they are in age between 18-69. Each respondent (“child”) was answering what level of education his/her parents achieved and what level of education she/he has.

The analysis was conducted using the R programming language applying correspondence data analysis (CDA) to explore potential correlations and patterns within the data. The results are presented in the following perception map:

<img width="638" height="430" alt="perception_map" src="https://github.com/user-attachments/assets/2f477888-6cce-4b49-8014-c7c77f8fac7b" />

The yellow color represents the education of 'children', and the purple color shows the level of education of parents. The shortcuts (which are in Polish, as the entire project was written in this language) stand for:

● dzieckoGim/rodziceGim - child/parents with lower secondary education or below

● dzieckoZawodowe/rodziceZawodowe - child/parents with vocational education

● dzieckoSrednie/rodziceSrednie - child/parents with high school education

● dzieckoIstopien/rodziceIstopien - child/parents with bachelor or engineering degree

● dzieckoIIstopien/rodziceIIstopien - child/parents with master degree or higher.

As can be seen from the perception map, the child has, on average, one level of education higher than his parents. The chart below illustrates this final insight:

<img width="1350" height="629" alt="correlation_plot" src="https://github.com/user-attachments/assets/cf183155-2c7c-4119-a230-9c2f5dbc96be" />

The y-axis represents the child's education and the x-axis shows the parents' education. Shortcuts stand for:

● gim_i_ponizej - child/parents with lower secondary education or below

● zawodowe - child/parents with vocational education

● srednie - child/parents with high school education

● I_stopnia - child/parents with bachelor or engineering degree

● II_stopnia_i_powyzej - child/parents with master degree or higher.

As the graph shows - "extreme" levels of education among parents (lower secondary school or below, and second degree or higher) correlate with their counterparts in children. In other cases (vocational education, high school education and first degree), on average, children have one level of education higher than their parents.
