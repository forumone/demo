/git_demo:
  file.directory:
    - user: root
    - group: root
    - mode: 755
    - makedirs: True

/git_demo/base:
  file.directory:
    - user: root
    - group: root
    - mode: 755
    - makedirs: True
    - onlyif:
      - test -d /demo

/git_demo/base/base.txt:
  file.managed:
    - user: root
    - group: root
    - mode: 644
    - contents: 
      - "THIS IS BASE"
    - onlyif:
      - test -d /demo/base
