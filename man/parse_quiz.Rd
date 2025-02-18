% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/quiz.R
\name{parse_quiz}
\alias{parse_quiz}
\alias{extract_quiz}
\alias{find_quiz_indices}
\alias{check_quiz_attributes}
\alias{check_quiz_question_attributes}
\alias{check_attributes}
\title{Parse Quiz and Other Checking Functions}
\usage{
parse_quiz(x)

extract_quiz(x)

find_quiz_indices(x)

check_quiz_attributes(x, verbose = TRUE)

check_quiz_question_attributes(x, verbose = TRUE)

check_attributes(x, verbose = TRUE)
}
\arguments{
\item{x}{The output from [leanbuild::parse_quiz]}

\item{verbose}{print diagnostic messages}
}
\value{
A list of elements, including a `data.frame` and metadata
for questions

A logical
}
\description{
Parse Quiz and Other Checking Functions

Check Quiz Information
}
\examples{

x = c('{quiz, id: quiz_00_filename}',
"### Lesson Name quiz",
"{choose-answers: 4}",
"? What do you think?",
"",
"C) The answer to this one",
"o) Not the answer",
"o) Not the answer either",
"C) Another correct answer",
"m) Mandatory different answer",
"",
"{/quiz}")
out = parse_quiz(x)
check_quiz_attributes(out)

x = c('{quiz, id: quiz_00_filename, choose-answers: 4}',
"### Lesson Name quiz",
"{choose-answers: 4, attempts: 25}",
"? What do you think?",
"C) The answer to this one",
"o) Not the answer",
"o) Not the answer either",
"C) Another correct answer",
"m) Mandatory different answer",
"{/quiz}")
out = parse_quiz(x)
check_quiz_attributes(out)
check_quiz_question_attributes(out)

x = c('{quiz, id: quiz_00_filename, choose-answers: 4}',
"### Lesson Name quiz",
"{choose-answers: 4, attempts: 25}",
"",
"? What do you think?",
"! The answer to this one",
"{/quiz}")
out = parse_quiz(x)
check_quiz_attributes(out)
check_quiz_question_attributes(out)

}
