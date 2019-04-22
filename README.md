# Dylan Taylor's LaTeX Résumé
My résumé, in LaTeX format, inspired by [Debarghya Das](https://github.com/deedy/Deedy-Resume). If my website is up and working correctly (it usually is, unless I'm doing work on it), you can see a [live PDF version of this file](https://dylanmtaylor.com/files/dylan-resume.pdf). As I set in [the Ansible script that I deploy my website with](https://github.com/dylanmtaylor/dylanmtaylor-ansible), the server runs a cronjob every 5 minutes to check this git repository for changes and it will pull down the latest version, compile it, and copy the resulting files into the /files directory on the website, where they are served by Nginx. Because of this, within minutes of my updates, the new version is deployed in an automated fashion.

## Building
Assuming the proper software is installed (on Arch linux, this is the `texlive-most` package), this can be built by running
```bash
xelatex dylan-resume.tex
```
