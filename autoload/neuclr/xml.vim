scriptencoding utf-8

function! neuclr#xml#Highlight() abort
  highlight! link docbkKeyword NeuCyanBold

  highlight! link dtdFunction GruvboxGray
  highlight! link dtdParamEntityPunct GruvboxGray
  highlight! link dtdParamEntityDPunct GruvboxGray
  highlight! link dtdTagName GruvboxPurple

  highlight! link xmlAttrib NeuCyan
  highlight! link xmlAttribPunct GruvboxGray
  highlight! link xmlCdataStart GruvboxGray
  highlight! link xmlCdataCdata GruvboxPurple
  highlight! link xmlDocTypeDecl GruvboxGray
  highlight! link xmlDocTypeKeyword GruvboxPurple
  highlight! link xmlEndTag GruvboxBlue
  highlight! link xmlEntity GruvboxOrange
  highlight! link xmlEntityPunct GruvboxOrange
  highlight! link xmlEqual GruvboxBlue
  highlight! link xmlProcessingDelim GruvboxGray
  highlight! link xmlTag GruvboxBlue
  highlight! link xmlTagName GruvboxBlue
endfunction
