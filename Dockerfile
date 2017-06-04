FROM jupyter/datascience-notebook

MAINTAINER Matt Titmus <matthew.titmus@gmail.com>

RUN pip install --upgrade 'scikit-learn>=0.17,<0.18'
