FROM jupyter/datascience-notebook

MAINTAINER Matt Titmus <matthew.titmus@gmail.com>

RUN pip install --upgrade 'scikit-learn>=0.17,<0.18'

# Install Python 3 Tensorflow
RUN conda install --quiet --yes 'tensorflow=1.0*'

# Install Python 2 Tensorflow
RUN conda install --quiet --yes -n python2 'tensorflow=1.0*'
