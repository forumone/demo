/git_demo:
  file.directory:
    - user: root
    - group: root
    - mode: 755
    - makedirs: True

/git_demo/aws2:
  file.directory:
    - user: root
    - group: root
    - mode: 755
    - makedirs: True
    - onlyif:
      - test -d /demo

/git_demo/aws2/index.html:
  file.managed:
    - user: root
    - group: root
    - mode: 644
    - contents: 
      - "Check"
    - onlyif:
      - test -d /demo/aws2
