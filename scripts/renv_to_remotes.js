const fs = require('fs');

const rawdata = fs.readFileSync("renv.lock");
const renv = JSON.parse(rawdata);

for (let { Package, Version } of Object.values(renv.Packages)) {
  console.log(`RUN R -e "options(warn = 2); require('remotes'); install_version('${Package}', version = '${Version}', repos = 'http://cran.r-project.org')"`);
}