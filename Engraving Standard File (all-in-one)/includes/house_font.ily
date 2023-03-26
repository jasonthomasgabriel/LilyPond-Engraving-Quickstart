\version "2.18.2"

 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
 % "House Font" setting for Engraving Standard File v1.x        %
 % ------------------------------------------------------------ %
 % - Sets the Adobe Source Pro family as standard font.         %
 %   (Made into an include file so it can be switch off more    %
 %    easily in the Engraving Standard File when music is       %
 %    elsewhere).                                               %
 %                                                              %
 % Enjoy,                                                       %
 % Tommy                                                        %
 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\paper  {
  #(define fonts
     (make-pango-font-tree "Source Serif Pro"
       "Source Sans Pro"
       "Source Code Pro"
       (/ staff-height pt 20)))
}