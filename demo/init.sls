/git_demo:
  file.directory:
    - user: root
    - group: root
    - mode: 755
    - makedirs: True

/git_demo/aws1:
  file.directory:
    - user: root
    - group: root
    - mode: 755
    - makedirs: True
    - onlyif:
      - test -d /demo

/git_demo/aws1/aws1.txt:
  file.managed:
    - user: root
    - group: root
    - mode: 644
    - contents: 
      - "THIS IS AWS1"
    - onlyif:
      - test -d /demo/aws1

/git_demo/aws1/version.txt:
  file.managed:
    - user: root
    - group: root
    - mode: 644
    - contents: 
      - "THIS IS AWS1"
    - onlyif:
      - test -d /demo/aws1