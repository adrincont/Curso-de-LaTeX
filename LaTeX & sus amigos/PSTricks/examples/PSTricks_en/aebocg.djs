\begingroup
\makeatletter
\immediate\openout\js@verbatim@out=\js@Path aebocg.fdf
\begin{jsexpverbatimwrite}
\firstFDFline
1 0 obj
<< /FDF << /JavaScript << /Doc 2 0 R >> >> >>
endobj
2 0 obj
[ \csname\@gobble aebocgOBJ\endcsname]
endobj
3 0 obj
<<>>
stream
var ocgs = this.getOCGOrder();
var xBlds = new Array();
console.println("Reindexing ocgs and creating xBlds");
if ( ocgs != null ) {
    var l = ocgs.length;
    for ( i=0; i<l; i++ ) {
        if (ocgs[0].name.substring(0,3) == "xb." )
            xBlds.push(ocgs.shift());
        else ocgs.push(ocgs.shift());
    }
}
var assocxLayers = new Array();
if ( xBlds != null ) {
    for ( var i=0; i<xBlds.length; i++)
        assocxLayers[xBlds[i].name]=i;
}
function getxBld (name) {
    var i = assocxLayers["xb."+name];
    return ( i == undefined ) ? null : xBlds[i];
}
function toggleHelp (name)
{
    var o = getxBld(name);
    if ( o != null ) o.state = (event.name.indexOf("Enter") != -1);
}
function toggleSetThisLayer(name, bState) {
    var oLayer = getxBld(name);
    if ( oLayer != null )
        oLayer.state = (arguments.length > 1) ? bState : !oLayer.state;
}
function getLayerState(name) {
    var oLayer = getxBld(name);
    return ( oLayer != null ) ? oLayer.state : null;
}
endstream
endobj
trailer
<< /Root 1 0 R >>
\lastFDFline
*end{jsexpverbatimwrite}
\endgroup
