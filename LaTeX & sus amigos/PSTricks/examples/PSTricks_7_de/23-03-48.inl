%% 
%%  Ein Beispiel der DANTE-Edition
%%  
%%  7. Auflage
%% 
%%  Beispiel 23-03-48 auf Seite 491.
%% 
%%  Copyright (C) 2016 Herbert Voss
%% 
%%  It may be distributed and/or modified under the conditions
%%  of the LaTeX Project Public License, either version 1.3
%%  of this license or (at your option) any later version.
%% 
%%  See http://www.latex-project.org/lppl.txt for details.
%% 
%% 
%% ==== 
% Show page(s) 1
%% 
%% 
\documentclass[]{exaarticle}
\pagestyle{empty}
\setlength\textwidth{193.16928pt}
%StartShownPreambleCommands
\usepackage{pst-circ}
%StopShownPreambleCommands
\begin{document}
\begin{pspicture}(3,2)
  \pnode(0,1.4){A} \pnode(0,0.6){B}
  \pnode(3,1.4){C} \pnode(3,0.6){D}
  \coupler[couplerstyle=hybrid,inputarrow=true](A)(B)(C)(D)%
    {Hyb. $180$\ensuremath{^\circ}}%
    {fillstyle=solid,fillcolor=yellow}
\end{pspicture}
\end{document}
