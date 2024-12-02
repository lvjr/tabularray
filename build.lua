
module = "tabularray"

sourcefiles = {"tabularray.sty"}

-- all files that match checksuppfiles in the supportdir are moved to build/test folder
supportdir = "./testfiles"
checksuppfiles  = {"regression-test.cfg"}

checkengines = {"xetex","pdftex"}
checkruns = 2

lvtext = ".tex"

kpse.set_program_name ("kpsewhich")
if not release_date then
 dofile ( kpse.lookup ("l3build.lua"))
end
