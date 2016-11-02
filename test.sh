
# describe: tools exist
echo "Run test #1" &&
which wget \
      wput \
      curl \
      zip \
      tar \
      rsync \
      make &&


# describe: should render latex
# * biblatex biber
# * math
# * utf8 chars
docker run --rm -v $PWD:/data test echo "Run test #2" && \
  cd test && \
  pdflatex test   && \
  biber test      && \
  pdflatex test   && \
  pdflatex test && \
  cd ..

# describe: should render markdown to pdf
# * math
# * utf8 chars
docker run --rm -v $PWD:/data test echo "Run test #2" && \
  pandoc --toc test/test.md -o test.pdf
