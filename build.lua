
module = "tabularray"

sourcefiles = {"tabularray.sty"}

checkengines = {"pdftex","xetex"}
checkruns = 2

lvtext = ".tex"

kpse.set_program_name ("kpsewhich")
if not release_date then
 dofile ( kpse.lookup ("l3build.lua"))
end
