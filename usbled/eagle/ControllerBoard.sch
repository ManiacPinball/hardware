<?xml version="1.0" encoding="utf-8"?>
<!DOCTYPE eagle SYSTEM "eagle.dtd">
<eagle version="6.1">
<drawing>
<settings>
<setting alwaysvectorfont="no"/>
<setting verticaltext="up"/>
</settings>
<grid distance="0.1" unitdist="inch" unit="inch" style="lines" multiple="1" display="no" altdistance="0.01" altunitdist="inch" altunit="inch"/>
<layers>
<layer number="1" name="Top" color="4" fill="1" visible="no" active="no"/>
<layer number="16" name="Bottom" color="1" fill="1" visible="no" active="no"/>
<layer number="17" name="Pads" color="2" fill="1" visible="no" active="no"/>
<layer number="18" name="Vias" color="2" fill="1" visible="no" active="no"/>
<layer number="19" name="Unrouted" color="6" fill="1" visible="no" active="no"/>
<layer number="20" name="Dimension" color="15" fill="1" visible="no" active="no"/>
<layer number="21" name="tPlace" color="7" fill="1" visible="no" active="no"/>
<layer number="22" name="bPlace" color="7" fill="1" visible="no" active="no"/>
<layer number="23" name="tOrigins" color="15" fill="1" visible="no" active="no"/>
<layer number="24" name="bOrigins" color="15" fill="1" visible="no" active="no"/>
<layer number="25" name="tNames" color="7" fill="1" visible="no" active="no"/>
<layer number="26" name="bNames" color="7" fill="1" visible="no" active="no"/>
<layer number="27" name="tValues" color="7" fill="1" visible="no" active="no"/>
<layer number="28" name="bValues" color="7" fill="1" visible="no" active="no"/>
<layer number="29" name="tStop" color="7" fill="3" visible="no" active="no"/>
<layer number="30" name="bStop" color="7" fill="6" visible="no" active="no"/>
<layer number="31" name="tCream" color="7" fill="4" visible="no" active="no"/>
<layer number="32" name="bCream" color="7" fill="5" visible="no" active="no"/>
<layer number="33" name="tFinish" color="6" fill="3" visible="no" active="no"/>
<layer number="34" name="bFinish" color="6" fill="6" visible="no" active="no"/>
<layer number="35" name="tGlue" color="7" fill="4" visible="no" active="no"/>
<layer number="36" name="bGlue" color="7" fill="5" visible="no" active="no"/>
<layer number="37" name="tTest" color="7" fill="1" visible="no" active="no"/>
<layer number="38" name="bTest" color="7" fill="1" visible="no" active="no"/>
<layer number="39" name="tKeepout" color="4" fill="11" visible="no" active="no"/>
<layer number="40" name="bKeepout" color="1" fill="11" visible="no" active="no"/>
<layer number="41" name="tRestrict" color="4" fill="10" visible="no" active="no"/>
<layer number="42" name="bRestrict" color="1" fill="10" visible="no" active="no"/>
<layer number="43" name="vRestrict" color="2" fill="10" visible="no" active="no"/>
<layer number="44" name="Drills" color="7" fill="1" visible="no" active="no"/>
<layer number="45" name="Holes" color="7" fill="1" visible="no" active="no"/>
<layer number="46" name="Milling" color="3" fill="1" visible="no" active="no"/>
<layer number="47" name="Measures" color="7" fill="1" visible="no" active="no"/>
<layer number="48" name="Document" color="7" fill="1" visible="no" active="no"/>
<layer number="49" name="Reference" color="7" fill="1" visible="no" active="no"/>
<layer number="51" name="tDocu" color="7" fill="1" visible="no" active="no"/>
<layer number="52" name="bDocu" color="7" fill="1" visible="no" active="no"/>
<layer number="91" name="Nets" color="2" fill="1" visible="yes" active="yes"/>
<layer number="92" name="Busses" color="1" fill="1" visible="yes" active="yes"/>
<layer number="93" name="Pins" color="2" fill="1" visible="no" active="yes"/>
<layer number="94" name="Symbols" color="4" fill="1" visible="yes" active="yes"/>
<layer number="95" name="Names" color="7" fill="1" visible="yes" active="yes"/>
<layer number="96" name="Values" color="7" fill="1" visible="yes" active="yes"/>
<layer number="97" name="Info" color="7" fill="1" visible="yes" active="yes"/>
<layer number="98" name="Guide" color="6" fill="1" visible="yes" active="yes"/>
</layers>
<schematic xreflabel="%F%N/%S.%C%R" xrefpart="/%S.%C%R">
<libraries>
<library name="74xx-eu">
<description>&lt;b&gt;TTL Devices, 74xx Series with European Symbols&lt;/b&gt;&lt;p&gt;
Based on the following sources:
&lt;ul&gt;
&lt;li&gt;Texas Instruments &lt;i&gt;TTL Data Book&lt;/i&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;Volume 1, 1996.
&lt;li&gt;TTL Data Book, Volume 2 , 1993
&lt;li&gt;National Seminconductor Databook 1990, ALS/LS Logic
&lt;li&gt;ttl 74er digital data dictionary, ECA Electronic + Acustic GmbH, ISBN 3-88109-032-0
&lt;li&gt;http://icmaster.com/ViewCompare.asp
&lt;/ul&gt;
&lt;author&gt;Created by librarian@cadsoft.de&lt;/author&gt;</description>
<packages>
<package name="DIL16">
<description>&lt;b&gt;Dual In Line Package&lt;/b&gt;</description>
<wire x1="10.16" y1="2.921" x2="-10.16" y2="2.921" width="0.1524" layer="21"/>
<wire x1="-10.16" y1="-2.921" x2="10.16" y2="-2.921" width="0.1524" layer="21"/>
<wire x1="10.16" y1="2.921" x2="10.16" y2="-2.921" width="0.1524" layer="21"/>
<wire x1="-10.16" y1="2.921" x2="-10.16" y2="1.016" width="0.1524" layer="21"/>
<wire x1="-10.16" y1="-2.921" x2="-10.16" y2="-1.016" width="0.1524" layer="21"/>
<wire x1="-10.16" y1="1.016" x2="-10.16" y2="-1.016" width="0.1524" layer="21" curve="-180"/>
<pad name="1" x="-8.89" y="-3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="2" x="-6.35" y="-3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="7" x="6.35" y="-3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="8" x="8.89" y="-3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="3" x="-3.81" y="-3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="4" x="-1.27" y="-3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="6" x="3.81" y="-3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="5" x="1.27" y="-3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="9" x="8.89" y="3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="10" x="6.35" y="3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="11" x="3.81" y="3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="12" x="1.27" y="3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="13" x="-1.27" y="3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="14" x="-3.81" y="3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="15" x="-6.35" y="3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="16" x="-8.89" y="3.81" drill="0.8128" shape="long" rot="R90"/>
<text x="-10.541" y="-2.921" size="1.27" layer="25" ratio="10" rot="R90">&gt;NAME</text>
<text x="-7.493" y="-0.635" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
</package>
<package name="SO16">
<description>&lt;b&gt;Small Outline package&lt;/b&gt; 150 mil</description>
<wire x1="4.699" y1="1.9558" x2="-4.699" y2="1.9558" width="0.1524" layer="51"/>
<wire x1="4.699" y1="-1.9558" x2="5.08" y2="-1.5748" width="0.1524" layer="21" curve="90"/>
<wire x1="-5.08" y1="1.5748" x2="-4.699" y2="1.9558" width="0.1524" layer="21" curve="-90"/>
<wire x1="4.699" y1="1.9558" x2="5.08" y2="1.5748" width="0.1524" layer="21" curve="-90"/>
<wire x1="-5.08" y1="-1.5748" x2="-4.699" y2="-1.9558" width="0.1524" layer="21" curve="90"/>
<wire x1="-4.699" y1="-1.9558" x2="4.699" y2="-1.9558" width="0.1524" layer="51"/>
<wire x1="5.08" y1="-1.5748" x2="5.08" y2="1.5748" width="0.1524" layer="21"/>
<wire x1="-5.08" y1="1.5748" x2="-5.08" y2="0.508" width="0.1524" layer="21"/>
<wire x1="-5.08" y1="0.508" x2="-5.08" y2="-0.508" width="0.1524" layer="21"/>
<wire x1="-5.08" y1="-0.508" x2="-5.08" y2="-1.5748" width="0.1524" layer="21"/>
<wire x1="-5.08" y1="0.508" x2="-5.08" y2="-0.508" width="0.1524" layer="21" curve="-180"/>
<wire x1="-5.08" y1="-1.6002" x2="5.08" y2="-1.6002" width="0.0508" layer="21"/>
<smd name="1" x="-4.445" y="-3.0734" dx="0.6604" dy="2.032" layer="1"/>
<smd name="16" x="-4.445" y="3.0734" dx="0.6604" dy="2.032" layer="1"/>
<smd name="2" x="-3.175" y="-3.0734" dx="0.6604" dy="2.032" layer="1"/>
<smd name="3" x="-1.905" y="-3.0734" dx="0.6604" dy="2.032" layer="1"/>
<smd name="15" x="-3.175" y="3.0734" dx="0.6604" dy="2.032" layer="1"/>
<smd name="14" x="-1.905" y="3.0734" dx="0.6604" dy="2.032" layer="1"/>
<smd name="4" x="-0.635" y="-3.0734" dx="0.6604" dy="2.032" layer="1"/>
<smd name="13" x="-0.635" y="3.0734" dx="0.6604" dy="2.032" layer="1"/>
<smd name="5" x="0.635" y="-3.0734" dx="0.6604" dy="2.032" layer="1"/>
<smd name="12" x="0.635" y="3.0734" dx="0.6604" dy="2.032" layer="1"/>
<smd name="6" x="1.905" y="-3.0734" dx="0.6604" dy="2.032" layer="1"/>
<smd name="7" x="3.175" y="-3.0734" dx="0.6604" dy="2.032" layer="1"/>
<smd name="11" x="1.905" y="3.0734" dx="0.6604" dy="2.032" layer="1"/>
<smd name="10" x="3.175" y="3.0734" dx="0.6604" dy="2.032" layer="1"/>
<smd name="8" x="4.445" y="-3.0734" dx="0.6604" dy="2.032" layer="1"/>
<smd name="9" x="4.445" y="3.0734" dx="0.6604" dy="2.032" layer="1"/>
<text x="-3.81" y="-0.762" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
<text x="-5.461" y="-1.905" size="1.27" layer="25" ratio="10" rot="R90">&gt;NAME</text>
<rectangle x1="-0.889" y1="1.9558" x2="-0.381" y2="3.0988" layer="51"/>
<rectangle x1="-4.699" y1="-3.0988" x2="-4.191" y2="-1.9558" layer="51"/>
<rectangle x1="-3.429" y1="-3.0988" x2="-2.921" y2="-1.9558" layer="51"/>
<rectangle x1="-2.159" y1="-3.0734" x2="-1.651" y2="-1.9304" layer="51"/>
<rectangle x1="-0.889" y1="-3.0988" x2="-0.381" y2="-1.9558" layer="51"/>
<rectangle x1="-2.159" y1="1.9558" x2="-1.651" y2="3.0988" layer="51"/>
<rectangle x1="-3.429" y1="1.9558" x2="-2.921" y2="3.0988" layer="51"/>
<rectangle x1="-4.699" y1="1.9558" x2="-4.191" y2="3.0988" layer="51"/>
<rectangle x1="0.381" y1="-3.0988" x2="0.889" y2="-1.9558" layer="51"/>
<rectangle x1="1.651" y1="-3.0988" x2="2.159" y2="-1.9558" layer="51"/>
<rectangle x1="2.921" y1="-3.0988" x2="3.429" y2="-1.9558" layer="51"/>
<rectangle x1="4.191" y1="-3.0988" x2="4.699" y2="-1.9558" layer="51"/>
<rectangle x1="0.381" y1="1.9558" x2="0.889" y2="3.0988" layer="51"/>
<rectangle x1="1.651" y1="1.9558" x2="2.159" y2="3.0988" layer="51"/>
<rectangle x1="2.921" y1="1.9558" x2="3.429" y2="3.0988" layer="51"/>
<rectangle x1="4.191" y1="1.9558" x2="4.699" y2="3.0988" layer="51"/>
</package>
<package name="LCC20">
<description>&lt;b&gt;Leadless Chip Carrier&lt;/b&gt;&lt;p&gt; Ceramic Package</description>
<wire x1="-0.4001" y1="4.4" x2="-0.87" y2="4.4" width="0.2032" layer="51"/>
<wire x1="-3.3" y1="4.4" x2="-4.4" y2="3.3" width="0.2032" layer="51"/>
<wire x1="-0.4001" y1="4.3985" x2="0.4001" y2="4.3985" width="0.2032" layer="51" curve="180"/>
<wire x1="-1.6701" y1="4.3985" x2="-0.8699" y2="4.3985" width="0.2032" layer="51" curve="180"/>
<wire x1="-4.3985" y1="2.14" x2="-4.3985" y2="2.94" width="0.2032" layer="51" curve="180"/>
<wire x1="-2.9401" y1="4.4" x2="-3.3" y2="4.4" width="0.2032" layer="51"/>
<wire x1="0.87" y1="4.4" x2="0.4001" y2="4.4" width="0.2032" layer="51"/>
<wire x1="0.87" y1="4.3985" x2="1.67" y2="4.3985" width="0.2032" layer="51" curve="180"/>
<wire x1="-4.4" y1="3.3" x2="-4.4" y2="2.9401" width="0.2032" layer="51"/>
<wire x1="-4.4" y1="2.14" x2="-4.4" y2="1.6701" width="0.2032" layer="51"/>
<wire x1="-4.3985" y1="0.87" x2="-4.3985" y2="1.67" width="0.2032" layer="51" curve="180"/>
<wire x1="-4.3985" y1="-0.4001" x2="-4.3985" y2="0.4001" width="0.2032" layer="51" curve="180"/>
<wire x1="-4.3985" y1="-1.6701" x2="-4.3985" y2="-0.8699" width="0.2032" layer="51" curve="180"/>
<wire x1="-4.4" y1="0.87" x2="-4.4" y2="0.4001" width="0.2032" layer="51"/>
<wire x1="-4.4" y1="-0.4001" x2="-4.4" y2="-0.87" width="0.2032" layer="51"/>
<wire x1="-4.4" y1="-2.9401" x2="-4.4" y2="-4.4" width="0.2032" layer="51"/>
<wire x1="-4.4" y1="-4.4" x2="-4.4" y2="-4.4099" width="0.2032" layer="51"/>
<wire x1="2.14" y1="4.3985" x2="2.94" y2="4.3985" width="0.2032" layer="51" curve="180"/>
<wire x1="2.14" y1="4.4" x2="1.6701" y2="4.4" width="0.2032" layer="51"/>
<wire x1="4.4" y1="4.4" x2="2.9401" y2="4.4" width="0.2032" layer="51"/>
<wire x1="0.4001" y1="-4.4" x2="0.87" y2="-4.4" width="0.2032" layer="51"/>
<wire x1="-0.4001" y1="-4.3985" x2="0.4001" y2="-4.3985" width="0.2032" layer="51" curve="-180"/>
<wire x1="0.87" y1="-4.3985" x2="1.67" y2="-4.3985" width="0.2032" layer="51" curve="-180"/>
<wire x1="2.9401" y1="-4.4" x2="4.4" y2="-4.4" width="0.2032" layer="51"/>
<wire x1="-0.87" y1="-4.4" x2="-0.4001" y2="-4.4" width="0.2032" layer="51"/>
<wire x1="-1.6701" y1="-4.3985" x2="-0.8699" y2="-4.3985" width="0.2032" layer="51" curve="-180"/>
<wire x1="-2.9401" y1="-4.3985" x2="-2.1399" y2="-4.3985" width="0.2032" layer="51" curve="-180"/>
<wire x1="-2.14" y1="-4.4" x2="-1.6701" y2="-4.4" width="0.2032" layer="51"/>
<wire x1="-4.4" y1="-4.4" x2="-2.9401" y2="-4.4" width="0.2032" layer="51"/>
<wire x1="4.4" y1="0.4001" x2="4.4" y2="0.87" width="0.2032" layer="51"/>
<wire x1="4.3985" y1="0.4001" x2="4.3985" y2="-0.4001" width="0.2032" layer="51" curve="180"/>
<wire x1="4.3985" y1="1.6701" x2="4.3985" y2="0.8699" width="0.2032" layer="51" curve="180"/>
<wire x1="4.4" y1="2.9401" x2="4.4" y2="4.4" width="0.2032" layer="51"/>
<wire x1="4.4" y1="-0.87" x2="4.4" y2="-0.4001" width="0.2032" layer="51"/>
<wire x1="4.3985" y1="-0.87" x2="4.3985" y2="-1.67" width="0.2032" layer="51" curve="180"/>
<wire x1="4.3985" y1="-2.14" x2="4.3985" y2="-2.94" width="0.2032" layer="51" curve="180"/>
<wire x1="4.4" y1="-2.14" x2="4.4" y2="-1.6701" width="0.2032" layer="51"/>
<wire x1="4.4" y1="-4.4" x2="4.4" y2="-2.9401" width="0.2032" layer="51"/>
<wire x1="-2.9401" y1="4.3985" x2="-2.1399" y2="4.3985" width="0.2032" layer="51" curve="180"/>
<wire x1="-1.6701" y1="4.4" x2="-2.14" y2="4.4" width="0.2032" layer="51"/>
<wire x1="-4.3985" y1="-2.9401" x2="-4.3985" y2="-2.1399" width="0.2032" layer="51" curve="180"/>
<wire x1="-4.4" y1="-1.6701" x2="-4.4" y2="-2.14" width="0.2032" layer="51"/>
<wire x1="1.6701" y1="-4.4" x2="2.14" y2="-4.4" width="0.2032" layer="51"/>
<wire x1="2.14" y1="-4.3985" x2="2.94" y2="-4.3985" width="0.2032" layer="51" curve="-180"/>
<wire x1="4.3985" y1="2.9401" x2="4.3985" y2="2.1399" width="0.2032" layer="51" curve="180"/>
<wire x1="4.4" y1="1.6701" x2="4.4" y2="2.14" width="0.2032" layer="51"/>
<wire x1="-3.3" y1="4.4" x2="-4.4" y2="3.3" width="0.2032" layer="21"/>
<wire x1="-4.4" y1="-3.1941" x2="-4.4" y2="-4.4" width="0.2032" layer="21"/>
<wire x1="-4.4" y1="-4.4" x2="-3.1941" y2="-4.4" width="0.2032" layer="21"/>
<wire x1="3.1941" y1="-4.4" x2="4.4" y2="-4.4" width="0.2032" layer="21"/>
<wire x1="4.4" y1="-4.4" x2="4.4" y2="-3.1941" width="0.2032" layer="21"/>
<wire x1="4.4" y1="3.1941" x2="4.4" y2="4.4" width="0.2032" layer="21"/>
<wire x1="4.4" y1="4.4" x2="3.1941" y2="4.4" width="0.2032" layer="21"/>
<smd name="2" x="-1.27" y="4.5001" dx="0.8" dy="2" layer="1"/>
<smd name="1" x="0" y="3.8001" dx="0.8" dy="3.4" layer="1"/>
<smd name="3" x="-2.54" y="4.5001" dx="0.8" dy="2" layer="1"/>
<smd name="4" x="-4.5001" y="2.54" dx="2" dy="0.8" layer="1"/>
<smd name="5" x="-4.5001" y="1.27" dx="2" dy="0.8" layer="1"/>
<smd name="6" x="-4.5001" y="0" dx="2" dy="0.8" layer="1"/>
<smd name="7" x="-4.5001" y="-1.27" dx="2" dy="0.8" layer="1"/>
<smd name="8" x="-4.5001" y="-2.54" dx="2" dy="0.8" layer="1"/>
<smd name="9" x="-2.54" y="-4.5001" dx="0.8" dy="2" layer="1"/>
<smd name="10" x="-1.27" y="-4.5001" dx="0.8" dy="2" layer="1"/>
<smd name="11" x="0" y="-4.5001" dx="0.8" dy="2" layer="1"/>
<smd name="12" x="1.27" y="-4.5001" dx="0.8" dy="2" layer="1"/>
<smd name="13" x="2.54" y="-4.5001" dx="0.8" dy="2" layer="1"/>
<smd name="14" x="4.5001" y="-2.54" dx="2" dy="0.8" layer="1"/>
<smd name="15" x="4.5001" y="-1.27" dx="2" dy="0.8" layer="1"/>
<smd name="16" x="4.5001" y="0" dx="2" dy="0.8" layer="1"/>
<smd name="17" x="4.5001" y="1.27" dx="2" dy="0.8" layer="1"/>
<smd name="18" x="4.5001" y="2.54" dx="2" dy="0.8" layer="1"/>
<smd name="19" x="2.54" y="4.5001" dx="0.8" dy="2" layer="1"/>
<smd name="20" x="1.27" y="4.5001" dx="0.8" dy="2" layer="1"/>
<text x="-4.0051" y="6.065" size="1.778" layer="25">&gt;NAME</text>
<text x="-3.9751" y="-7.5601" size="1.778" layer="27">&gt;VALUE</text>
</package>
</packages>
<symbols>
<symbol name="74595">
<wire x1="-7.62" y1="-15.24" x2="7.62" y2="-15.24" width="0.4064" layer="94"/>
<wire x1="7.62" y1="-15.24" x2="7.62" y2="12.7" width="0.4064" layer="94"/>
<wire x1="7.62" y1="12.7" x2="-7.62" y2="12.7" width="0.4064" layer="94"/>
<wire x1="-7.62" y1="12.7" x2="-7.62" y2="-15.24" width="0.4064" layer="94"/>
<text x="-7.62" y="13.335" size="1.778" layer="95" font="vector">&gt;NAME</text>
<text x="-7.62" y="-17.78" size="1.778" layer="96">&gt;VALUE</text>
<pin name="QB" x="12.7" y="7.62" length="middle" direction="hiz" rot="R180"/>
<pin name="QC" x="12.7" y="5.08" length="middle" direction="hiz" rot="R180"/>
<pin name="QD" x="12.7" y="2.54" length="middle" direction="hiz" rot="R180"/>
<pin name="QE" x="12.7" y="0" length="middle" direction="hiz" rot="R180"/>
<pin name="QF" x="12.7" y="-2.54" length="middle" direction="hiz" rot="R180"/>
<pin name="QG" x="12.7" y="-5.08" length="middle" direction="hiz" rot="R180"/>
<pin name="QH" x="12.7" y="-7.62" length="middle" direction="hiz" rot="R180"/>
<pin name="SCL" x="-12.7" y="2.54" length="middle" direction="in" function="dot"/>
<pin name="SCK" x="-12.7" y="5.08" length="middle" direction="in" function="clk"/>
<pin name="RCK" x="-12.7" y="-2.54" length="middle" direction="in" function="clk"/>
<pin name="G" x="-12.7" y="-12.7" length="middle" direction="in" function="dot"/>
<pin name="SER" x="-12.7" y="10.16" length="middle" direction="in"/>
<pin name="QA" x="12.7" y="10.16" length="middle" direction="hiz" rot="R180"/>
<pin name="QH*" x="12.7" y="-12.7" length="middle" direction="hiz" rot="R180"/>
</symbol>
<symbol name="PWRN">
<text x="-0.635" y="-0.635" size="1.778" layer="95">&gt;NAME</text>
<text x="1.905" y="-5.842" size="1.27" layer="95" rot="R90">GND</text>
<text x="1.905" y="2.54" size="1.27" layer="95" rot="R90">VCC</text>
<pin name="GND" x="0" y="-7.62" visible="pad" length="middle" direction="pwr" rot="R90"/>
<pin name="VCC" x="0" y="7.62" visible="pad" length="middle" direction="pwr" rot="R270"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="74*595" prefix="IC">
<description>8-bit &lt;b&gt;SHIFT REGISTER&lt;/b&gt;, output latch</description>
<gates>
<gate name="A" symbol="74595" x="22.86" y="0"/>
<gate name="P" symbol="PWRN" x="-5.08" y="0" addlevel="request"/>
</gates>
<devices>
<device name="N" package="DIL16">
<connects>
<connect gate="A" pin="G" pad="13"/>
<connect gate="A" pin="QA" pad="15"/>
<connect gate="A" pin="QB" pad="1"/>
<connect gate="A" pin="QC" pad="2"/>
<connect gate="A" pin="QD" pad="3"/>
<connect gate="A" pin="QE" pad="4"/>
<connect gate="A" pin="QF" pad="5"/>
<connect gate="A" pin="QG" pad="6"/>
<connect gate="A" pin="QH" pad="7"/>
<connect gate="A" pin="QH*" pad="9"/>
<connect gate="A" pin="RCK" pad="12"/>
<connect gate="A" pin="SCK" pad="11"/>
<connect gate="A" pin="SCL" pad="10"/>
<connect gate="A" pin="SER" pad="14"/>
<connect gate="P" pin="GND" pad="8"/>
<connect gate="P" pin="VCC" pad="16"/>
</connects>
<technologies>
<technology name="HC"/>
<technology name="HCT"/>
<technology name="LS"/>
</technologies>
</device>
<device name="D" package="SO16">
<connects>
<connect gate="A" pin="G" pad="13"/>
<connect gate="A" pin="QA" pad="15"/>
<connect gate="A" pin="QB" pad="1"/>
<connect gate="A" pin="QC" pad="2"/>
<connect gate="A" pin="QD" pad="3"/>
<connect gate="A" pin="QE" pad="4"/>
<connect gate="A" pin="QF" pad="5"/>
<connect gate="A" pin="QG" pad="6"/>
<connect gate="A" pin="QH" pad="7"/>
<connect gate="A" pin="QH*" pad="9"/>
<connect gate="A" pin="RCK" pad="12"/>
<connect gate="A" pin="SCK" pad="11"/>
<connect gate="A" pin="SCL" pad="10"/>
<connect gate="A" pin="SER" pad="14"/>
<connect gate="P" pin="GND" pad="8"/>
<connect gate="P" pin="VCC" pad="16"/>
</connects>
<technologies>
<technology name="HC"/>
<technology name="HCT"/>
</technologies>
</device>
<device name="FK" package="LCC20">
<connects>
<connect gate="A" pin="G" pad="17"/>
<connect gate="A" pin="QA" pad="19"/>
<connect gate="A" pin="QB" pad="2"/>
<connect gate="A" pin="QC" pad="3"/>
<connect gate="A" pin="QD" pad="4"/>
<connect gate="A" pin="QE" pad="5"/>
<connect gate="A" pin="QF" pad="7"/>
<connect gate="A" pin="QG" pad="8"/>
<connect gate="A" pin="QH" pad="9"/>
<connect gate="A" pin="QH*" pad="12"/>
<connect gate="A" pin="RCK" pad="15"/>
<connect gate="A" pin="SCK" pad="14"/>
<connect gate="A" pin="SCL" pad="13"/>
<connect gate="A" pin="SER" pad="18"/>
<connect gate="P" pin="GND" pad="10"/>
<connect gate="P" pin="VCC" pad="20"/>
</connects>
<technologies>
<technology name="HC"/>
<technology name="HCT"/>
<technology name="LS"/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="ULN2803">
<packages>
<package name="P-DIP">
<wire x1="2.8575" y1="11.43" x2="2.8575" y2="-11.43" width="0.127" layer="21"/>
<wire x1="2.8575" y1="-11.43" x2="-2.8575" y2="-11.43" width="0.127" layer="21"/>
<wire x1="-2.8575" y1="-11.43" x2="-2.8575" y2="11.43" width="0.127" layer="21"/>
<wire x1="-2.8575" y1="11.43" x2="-0.635" y2="11.43" width="0.127" layer="21"/>
<wire x1="0.635" y1="11.43" x2="2.8575" y2="11.43" width="0.127" layer="21"/>
<wire x1="0.635" y1="11.43" x2="-0.635" y2="11.43" width="0.127" layer="21" curve="-180"/>
<pad name="OUT6" x="3.81" y="-2.54" drill="0.8" shape="long"/>
<pad name="OUT5" x="3.81" y="0" drill="0.8" shape="long"/>
<pad name="OUT4" x="3.81" y="2.54" drill="0.8" shape="long"/>
<pad name="OUT3" x="3.81" y="5.08" drill="0.8" shape="long"/>
<pad name="OUT2" x="3.81" y="7.62" drill="0.8" shape="long"/>
<pad name="OUT1" x="3.81" y="10.16" drill="0.8" shape="long"/>
<pad name="OUT7" x="3.81" y="-5.08" drill="0.8" shape="long"/>
<pad name="IN7" x="-3.81" y="-5.08" drill="0.8" shape="long"/>
<pad name="IN6" x="-3.81" y="-2.54" drill="0.8" shape="long"/>
<pad name="IN5" x="-3.81" y="0" drill="0.8" shape="long"/>
<pad name="IN4" x="-3.81" y="2.54" drill="0.8" shape="long"/>
<pad name="IN3" x="-3.81" y="5.08" drill="0.8" shape="long"/>
<pad name="IN2" x="-3.81" y="7.62" drill="0.8" shape="long"/>
<pad name="IN1" x="-3.81" y="10.16" drill="0.8" shape="long"/>
<pad name="OUT8" x="3.81" y="-7.62" drill="0.8" shape="long"/>
<pad name="IN8" x="-3.81" y="-7.62" drill="0.8" shape="long"/>
<pad name="COMMON-FREE-WHEELING-DIODES" x="3.81" y="-10.16" drill="0.8" shape="long"/>
<pad name="GEN" x="-3.81" y="-10.16" drill="0.8" shape="long"/>
</package>
</packages>
<symbols>
<symbol name="ULN2803">
<wire x1="-25.4" y1="22.86" x2="22.86" y2="22.86" width="0.254" layer="94"/>
<wire x1="22.86" y1="22.86" x2="22.86" y2="-22.86" width="0.254" layer="94"/>
<wire x1="22.86" y1="-22.86" x2="-25.4" y2="-22.86" width="0.254" layer="94"/>
<wire x1="-25.4" y1="-22.86" x2="-25.4" y2="22.86" width="0.254" layer="94"/>
<text x="-5.08" y="20.32" size="1.27" layer="94">ULN2803</text>
<pin name="IN1" x="-27.94" y="20.32" visible="pin" length="short" direction="in"/>
<pin name="IN2" x="-27.94" y="15.24" visible="pin" length="short" direction="in"/>
<pin name="IN3" x="-27.94" y="10.16" visible="pin" length="short" direction="in"/>
<pin name="IN4" x="-27.94" y="5.08" visible="pin" length="short" direction="in"/>
<pin name="IN5" x="-27.94" y="0" visible="pin" length="short" direction="in"/>
<pin name="IN6" x="-27.94" y="-5.08" visible="pin" length="short" direction="in"/>
<pin name="IN7" x="-27.94" y="-10.16" visible="pin" length="short" direction="in"/>
<pin name="IN8" x="-27.94" y="-15.24" visible="pin" length="short" direction="in"/>
<pin name="GEN" x="-27.94" y="-20.32" visible="pin" length="short" direction="pwr"/>
<pin name="OUT1" x="25.4" y="20.32" visible="pin" length="short" direction="out" rot="R180"/>
<pin name="OUT2" x="25.4" y="15.24" visible="pin" length="short" direction="out" rot="R180"/>
<pin name="OUT3" x="25.4" y="10.16" visible="pin" length="short" direction="out" rot="R180"/>
<pin name="OUT4" x="25.4" y="5.08" visible="pin" length="short" direction="out" rot="R180"/>
<pin name="OUT5" x="25.4" y="0" visible="pin" length="short" direction="out" rot="R180"/>
<pin name="OUT6" x="25.4" y="-5.08" visible="pin" length="short" direction="out" rot="R180"/>
<pin name="OUT7" x="25.4" y="-10.16" visible="pin" length="short" direction="out" rot="R180"/>
<pin name="OUT8" x="25.4" y="-15.24" visible="pin" length="short" direction="out" rot="R180"/>
<pin name="COMMON-FREE-WHEELING-DIODES" x="25.4" y="-20.32" visible="pin" length="short" direction="out" rot="R180"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="ULN2803">
<gates>
<gate name="G$1" symbol="ULN2803" x="0" y="0"/>
</gates>
<devices>
<device name="" package="P-DIP">
<connects>
<connect gate="G$1" pin="COMMON-FREE-WHEELING-DIODES" pad="COMMON-FREE-WHEELING-DIODES"/>
<connect gate="G$1" pin="GEN" pad="GEN"/>
<connect gate="G$1" pin="IN1" pad="IN1"/>
<connect gate="G$1" pin="IN2" pad="IN2"/>
<connect gate="G$1" pin="IN3" pad="IN3"/>
<connect gate="G$1" pin="IN4" pad="IN4"/>
<connect gate="G$1" pin="IN5" pad="IN5"/>
<connect gate="G$1" pin="IN6" pad="IN6"/>
<connect gate="G$1" pin="IN7" pad="IN7"/>
<connect gate="G$1" pin="IN8" pad="IN8"/>
<connect gate="G$1" pin="OUT1" pad="OUT1"/>
<connect gate="G$1" pin="OUT2" pad="OUT2"/>
<connect gate="G$1" pin="OUT3" pad="OUT3"/>
<connect gate="G$1" pin="OUT4" pad="OUT4"/>
<connect gate="G$1" pin="OUT5" pad="OUT5"/>
<connect gate="G$1" pin="OUT6" pad="OUT6"/>
<connect gate="G$1" pin="OUT7" pad="OUT7"/>
<connect gate="G$1" pin="OUT8" pad="OUT8"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="supply1">
<description>&lt;b&gt;Supply Symbols&lt;/b&gt;&lt;p&gt;
 GND, VCC, 0V, +5V, -5V, etc.&lt;p&gt;
 Please keep in mind, that these devices are necessary for the
 automatic wiring of the supply signals.&lt;p&gt;
 The pin name defined in the symbol is identical to the net which is to be wired automatically.&lt;p&gt;
 In this library the device names are the same as the pin names of the symbols, therefore the correct signal names appear next to the supply symbols in the schematic.&lt;p&gt;
 &lt;author&gt;Created by librarian@cadsoft.de&lt;/author&gt;</description>
<packages>
</packages>
<symbols>
<symbol name="GND">
<wire x1="-1.905" y1="0" x2="1.905" y2="0" width="0.254" layer="94"/>
<text x="-2.54" y="-2.54" size="1.778" layer="96">&gt;VALUE</text>
<pin name="GND" x="0" y="2.54" visible="off" length="short" direction="sup" rot="R270"/>
</symbol>
<symbol name="VCC">
<wire x1="1.27" y1="-1.905" x2="0" y2="0" width="0.254" layer="94"/>
<wire x1="0" y1="0" x2="-1.27" y2="-1.905" width="0.254" layer="94"/>
<text x="-2.54" y="-2.54" size="1.778" layer="96" rot="R90">&gt;VALUE</text>
<pin name="VCC" x="0" y="-2.54" visible="off" length="short" direction="sup" rot="R90"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="GND" prefix="GND">
<description>&lt;b&gt;SUPPLY SYMBOL&lt;/b&gt;</description>
<gates>
<gate name="1" symbol="GND" x="0" y="0"/>
</gates>
<devices>
<device name="">
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="VCC" prefix="P+">
<description>&lt;b&gt;SUPPLY SYMBOL&lt;/b&gt;</description>
<gates>
<gate name="VCC" symbol="VCC" x="0" y="0"/>
</gates>
<devices>
<device name="">
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="con-wago-500">
<description>&lt;b&gt;Wago Screw Clamps&lt;/b&gt;&lt;p&gt;
Grid 5.00 mm&lt;p&gt;
&lt;author&gt;Created by librarian@cadsoft.de&lt;/author&gt;</description>
<packages>
<package name="W237-4">
<description>&lt;b&gt;WAGO SCREW CLAMP&lt;/b&gt;</description>
<wire x1="-8.491" y1="-2.286" x2="-6.484" y2="-0.279" width="0.254" layer="51"/>
<wire x1="-3.512" y1="-2.261" x2="-1.531" y2="-0.254" width="0.254" layer="51"/>
<wire x1="1.517" y1="-2.286" x2="3.524" y2="-0.279" width="0.254" layer="51"/>
<wire x1="6.495" y1="-2.261" x2="8.477" y2="-0.254" width="0.254" layer="51"/>
<wire x1="-9.989" y1="-5.461" x2="10.001" y2="-5.461" width="0.1524" layer="21"/>
<wire x1="10.001" y1="3.734" x2="10.001" y2="3.531" width="0.1524" layer="21"/>
<wire x1="10.001" y1="3.734" x2="-9.989" y2="3.734" width="0.1524" layer="21"/>
<wire x1="-9.989" y1="-5.461" x2="-9.989" y2="-3.073" width="0.1524" layer="21"/>
<wire x1="-9.989" y1="-3.073" x2="-8.389" y2="-3.073" width="0.1524" layer="21"/>
<wire x1="-8.389" y1="-3.073" x2="-6.611" y2="-3.073" width="0.1524" layer="51"/>
<wire x1="-6.611" y1="-3.073" x2="-3.385" y2="-3.073" width="0.1524" layer="21"/>
<wire x1="-1.607" y1="-3.073" x2="1.619" y2="-3.073" width="0.1524" layer="21"/>
<wire x1="3.397" y1="-3.073" x2="6.622" y2="-3.073" width="0.1524" layer="21"/>
<wire x1="8.4" y1="-3.073" x2="10.001" y2="-3.073" width="0.1524" layer="21"/>
<wire x1="-9.989" y1="-3.073" x2="-9.989" y2="3.531" width="0.1524" layer="21"/>
<wire x1="10.001" y1="-3.073" x2="10.001" y2="-5.461" width="0.1524" layer="21"/>
<wire x1="-9.989" y1="3.531" x2="10.001" y2="3.531" width="0.1524" layer="21"/>
<wire x1="-9.989" y1="3.531" x2="-9.989" y2="3.734" width="0.1524" layer="21"/>
<wire x1="10.001" y1="3.531" x2="10.001" y2="-3.073" width="0.1524" layer="21"/>
<wire x1="-3.385" y1="-3.073" x2="-1.607" y2="-3.073" width="0.1524" layer="51"/>
<wire x1="1.619" y1="-3.073" x2="3.397" y2="-3.073" width="0.1524" layer="51"/>
<wire x1="6.622" y1="-3.073" x2="8.4" y2="-3.073" width="0.1524" layer="51"/>
<circle x="-7.5" y="-1.27" radius="1.4986" width="0.1524" layer="51"/>
<circle x="-7.5" y="2.2098" radius="0.508" width="0.1524" layer="21"/>
<circle x="-2.4962" y="-1.27" radius="1.4986" width="0.1524" layer="51"/>
<circle x="-2.4962" y="2.2098" radius="0.508" width="0.1524" layer="21"/>
<circle x="2.5076" y="-1.27" radius="1.4986" width="0.1524" layer="51"/>
<circle x="2.5076" y="2.2098" radius="0.508" width="0.1524" layer="21"/>
<circle x="7.5114" y="-1.27" radius="1.4986" width="0.1524" layer="51"/>
<circle x="7.5114" y="2.2098" radius="0.508" width="0.1524" layer="21"/>
<pad name="1" x="-7.5" y="-1.27" drill="1.1938" shape="long" rot="R90"/>
<pad name="2" x="-2.5" y="-1.27" drill="1.1938" shape="long" rot="R90"/>
<pad name="3" x="2.5" y="-1.27" drill="1.1938" shape="long" rot="R90"/>
<pad name="4" x="7.5" y="-1.27" drill="1.1938" shape="long" rot="R90"/>
<text x="-7.6524" y="-5.0292" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
<text x="-8.7446" y="-7.4422" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-9.532" y="0.635" size="1.27" layer="51" ratio="10">1</text>
<text x="-4.579" y="0.635" size="1.27" layer="51" ratio="10">2</text>
<text x="0.4756" y="0.635" size="1.27" layer="51" ratio="10">3</text>
<text x="5.4286" y="0.635" size="1.27" layer="51" ratio="10">4</text>
</package>
<package name="W237-102">
<description>&lt;b&gt;WAGO SCREW CLAMP&lt;/b&gt;</description>
<wire x1="-3.491" y1="-2.286" x2="-1.484" y2="-0.279" width="0.254" layer="51"/>
<wire x1="1.488" y1="-2.261" x2="3.469" y2="-0.254" width="0.254" layer="51"/>
<wire x1="-4.989" y1="-5.461" x2="4.993" y2="-5.461" width="0.1524" layer="21"/>
<wire x1="4.993" y1="3.734" x2="4.993" y2="3.531" width="0.1524" layer="21"/>
<wire x1="4.993" y1="3.734" x2="-4.989" y2="3.734" width="0.1524" layer="21"/>
<wire x1="-4.989" y1="-5.461" x2="-4.989" y2="-3.073" width="0.1524" layer="21"/>
<wire x1="-4.989" y1="-3.073" x2="-3.389" y2="-3.073" width="0.1524" layer="21"/>
<wire x1="-3.389" y1="-3.073" x2="-1.611" y2="-3.073" width="0.1524" layer="51"/>
<wire x1="-1.611" y1="-3.073" x2="1.615" y2="-3.073" width="0.1524" layer="21"/>
<wire x1="3.393" y1="-3.073" x2="4.993" y2="-3.073" width="0.1524" layer="21"/>
<wire x1="-4.989" y1="-3.073" x2="-4.989" y2="3.531" width="0.1524" layer="21"/>
<wire x1="4.993" y1="-3.073" x2="4.993" y2="-5.461" width="0.1524" layer="21"/>
<wire x1="-4.989" y1="3.531" x2="4.993" y2="3.531" width="0.1524" layer="21"/>
<wire x1="-4.989" y1="3.531" x2="-4.989" y2="3.734" width="0.1524" layer="21"/>
<wire x1="4.993" y1="3.531" x2="4.993" y2="-3.073" width="0.1524" layer="21"/>
<wire x1="1.615" y1="-3.073" x2="3.393" y2="-3.073" width="0.1524" layer="51"/>
<circle x="-2.5" y="-1.27" radius="1.4986" width="0.1524" layer="51"/>
<circle x="-2.5" y="2.2098" radius="0.508" width="0.1524" layer="21"/>
<circle x="2.5038" y="-1.27" radius="1.4986" width="0.1524" layer="51"/>
<circle x="2.5038" y="2.2098" radius="0.508" width="0.1524" layer="21"/>
<pad name="1" x="-2.5" y="-1.27" drill="1.1938" shape="long" rot="R90"/>
<pad name="2" x="2.5" y="-1.27" drill="1.1938" shape="long" rot="R90"/>
<text x="-5.04" y="-7.62" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
<text x="-3.8462" y="-5.0038" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-4.532" y="0.635" size="1.27" layer="21" ratio="10">1</text>
<text x="0.421" y="0.635" size="1.27" layer="21" ratio="10">2</text>
</package>
<package name="W237-103">
<description>&lt;b&gt;WAGO SCREW CLAMP&lt;/b&gt;</description>
<wire x1="4.093" y1="-2.255" x2="5.897" y2="-0.299" width="0.254" layer="51"/>
<wire x1="-0.911" y1="-2.331" x2="0.994" y2="-0.299" width="0.254" layer="51"/>
<wire x1="-5.991" y1="-2.306" x2="-3.984" y2="-0.299" width="0.254" layer="51"/>
<wire x1="-7.489" y1="-5.481" x2="7.497" y2="-5.481" width="0.1524" layer="21"/>
<wire x1="7.497" y1="3.714" x2="7.497" y2="3.511" width="0.1524" layer="21"/>
<wire x1="7.497" y1="3.714" x2="-7.489" y2="3.714" width="0.1524" layer="21"/>
<wire x1="-7.489" y1="-5.481" x2="-7.489" y2="-3.093" width="0.1524" layer="21"/>
<wire x1="-7.489" y1="-3.093" x2="-5.889" y2="-3.093" width="0.1524" layer="21"/>
<wire x1="-5.889" y1="-3.093" x2="-4.111" y2="-3.093" width="0.1524" layer="51"/>
<wire x1="-4.111" y1="-3.093" x2="-0.885" y2="-3.093" width="0.1524" layer="21"/>
<wire x1="0.893" y1="-3.093" x2="4.119" y2="-3.093" width="0.1524" layer="21"/>
<wire x1="5.897" y1="-3.093" x2="7.497" y2="-3.093" width="0.1524" layer="21"/>
<wire x1="-7.489" y1="-3.093" x2="-7.489" y2="3.511" width="0.1524" layer="21"/>
<wire x1="7.497" y1="-3.093" x2="7.497" y2="-5.481" width="0.1524" layer="21"/>
<wire x1="7.497" y1="3.511" x2="-7.489" y2="3.511" width="0.1524" layer="21"/>
<wire x1="7.497" y1="3.511" x2="7.497" y2="-3.093" width="0.1524" layer="21"/>
<wire x1="-7.489" y1="3.511" x2="-7.489" y2="3.714" width="0.1524" layer="21"/>
<wire x1="-0.885" y1="-3.093" x2="0.893" y2="-3.093" width="0.1524" layer="51"/>
<wire x1="4.119" y1="-3.093" x2="5.897" y2="-3.093" width="0.1524" layer="51"/>
<circle x="-5" y="-1.29" radius="1.4986" width="0.1524" layer="51"/>
<circle x="5.0076" y="-1.29" radius="1.4986" width="0.1524" layer="51"/>
<circle x="-5" y="2.1898" radius="0.508" width="0.1524" layer="21"/>
<circle x="5.0076" y="2.1898" radius="0.508" width="0.1524" layer="21"/>
<circle x="0.0038" y="-1.29" radius="1.4986" width="0.1524" layer="51"/>
<circle x="0.0038" y="2.1898" radius="0.508" width="0.1524" layer="21"/>
<pad name="1" x="-5" y="-1.29" drill="1.1938" shape="long" rot="R90"/>
<pad name="2" x="0" y="-1.29" drill="1.1938" shape="long" rot="R90"/>
<pad name="3" x="5" y="-1.29" drill="1.1938" shape="long" rot="R90"/>
<text x="-6.905" y="0.615" size="1.27" layer="51" ratio="10">1</text>
<text x="-1.8504" y="0.5642" size="1.27" layer="51" ratio="10">2</text>
<text x="3.1534" y="0.615" size="1.27" layer="51" ratio="10">3</text>
<text x="-5.3048" y="-4.9476" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
<text x="-5.6858" y="-7.4622" size="1.27" layer="25" ratio="10">&gt;NAME</text>
</package>
</packages>
<symbols>
<symbol name="KL">
<circle x="1.27" y="0" radius="1.27" width="0.254" layer="94"/>
<text x="0" y="0.889" size="1.778" layer="95" rot="R180">&gt;NAME</text>
<pin name="KL" x="5.08" y="0" visible="off" length="short" direction="pas" rot="R180"/>
</symbol>
<symbol name="KL+V">
<circle x="1.27" y="0" radius="1.27" width="0.254" layer="94"/>
<text x="-2.54" y="-3.683" size="1.778" layer="96">&gt;VALUE</text>
<text x="0" y="0.889" size="1.778" layer="95" rot="R180">&gt;NAME</text>
<pin name="KL" x="5.08" y="0" visible="off" length="short" direction="pas" rot="R180"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="W237-4" prefix="X" uservalue="yes">
<description>&lt;b&gt;WAGO SCREW CLAMP&lt;/b&gt;</description>
<gates>
<gate name="-1" symbol="KL" x="0" y="10.16" addlevel="always"/>
<gate name="-2" symbol="KL" x="0" y="5.08" addlevel="always"/>
<gate name="-3" symbol="KL" x="0" y="0" addlevel="always"/>
<gate name="-4" symbol="KL+V" x="0" y="-5.08" addlevel="always"/>
</gates>
<devices>
<device name="" package="W237-4">
<connects>
<connect gate="-1" pin="KL" pad="1"/>
<connect gate="-2" pin="KL" pad="2"/>
<connect gate="-3" pin="KL" pad="3"/>
<connect gate="-4" pin="KL" pad="4"/>
</connects>
<technologies>
<technology name="">
<attribute name="MF" value="" constant="no"/>
<attribute name="MPN" value="" constant="no"/>
<attribute name="OC_FARNELL" value="unknown" constant="no"/>
<attribute name="OC_NEWARK" value="unknown" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="W237-102" prefix="X" uservalue="yes">
<description>&lt;b&gt;WAGO SCREW CLAMP&lt;/b&gt;</description>
<gates>
<gate name="-1" symbol="KL" x="0" y="5.08" addlevel="always"/>
<gate name="-2" symbol="KL+V" x="0" y="0" addlevel="always"/>
</gates>
<devices>
<device name="" package="W237-102">
<connects>
<connect gate="-1" pin="KL" pad="1"/>
<connect gate="-2" pin="KL" pad="2"/>
</connects>
<technologies>
<technology name="">
<attribute name="MF" value="" constant="no"/>
<attribute name="MPN" value="237-102" constant="no"/>
<attribute name="OC_FARNELL" value="unknown" constant="no"/>
<attribute name="OC_NEWARK" value="70K9898" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="W237-103" prefix="X" uservalue="yes">
<description>&lt;b&gt;WAGO SCREW CLAMP&lt;/b&gt;</description>
<gates>
<gate name="-1" symbol="KL" x="0" y="5.08" addlevel="always"/>
<gate name="-2" symbol="KL" x="0" y="0" addlevel="always"/>
<gate name="-3" symbol="KL+V" x="0" y="-5.08" addlevel="always"/>
</gates>
<devices>
<device name="" package="W237-103">
<connects>
<connect gate="-1" pin="KL" pad="1"/>
<connect gate="-2" pin="KL" pad="2"/>
<connect gate="-3" pin="KL" pad="3"/>
</connects>
<technologies>
<technology name="">
<attribute name="MF" value="" constant="no"/>
<attribute name="MPN" value="237-103" constant="no"/>
<attribute name="OC_FARNELL" value="unknown" constant="no"/>
<attribute name="OC_NEWARK" value="18M7116" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
</libraries>
<attributes>
</attributes>
<variantdefs>
</variantdefs>
<classes>
<class number="0" name="default" width="0" drill="0">
</class>
</classes>
<parts>
<part name="IC1" library="74xx-eu" deviceset="74*595" device="N" technology="HC"/>
<part name="IC2" library="74xx-eu" deviceset="74*595" device="N" technology="HC"/>
<part name="U$1" library="ULN2803" deviceset="ULN2803" device=""/>
<part name="U$3" library="ULN2803" deviceset="ULN2803" device=""/>
<part name="GND1" library="supply1" deviceset="GND" device=""/>
<part name="GND2" library="supply1" deviceset="GND" device=""/>
<part name="GND3" library="supply1" deviceset="GND" device=""/>
<part name="GND4" library="supply1" deviceset="GND" device=""/>
<part name="P+1" library="supply1" deviceset="VCC" device=""/>
<part name="IC3" library="74xx-eu" deviceset="74*595" device="N" technology="HC"/>
<part name="U$2" library="ULN2803" deviceset="ULN2803" device=""/>
<part name="U$4" library="ULN2803" deviceset="ULN2803" device=""/>
<part name="IC4" library="74xx-eu" deviceset="74*595" device="N" technology="HC"/>
<part name="GND6" library="supply1" deviceset="GND" device=""/>
<part name="GND7" library="supply1" deviceset="GND" device=""/>
<part name="GND8" library="supply1" deviceset="GND" device=""/>
<part name="GND9" library="supply1" deviceset="GND" device=""/>
<part name="GND10" library="supply1" deviceset="GND" device=""/>
<part name="X1" library="con-wago-500" deviceset="W237-4" device=""/>
<part name="X2" library="con-wago-500" deviceset="W237-4" device=""/>
<part name="X3" library="con-wago-500" deviceset="W237-4" device=""/>
<part name="X4" library="con-wago-500" deviceset="W237-4" device=""/>
<part name="X5" library="con-wago-500" deviceset="W237-4" device=""/>
<part name="X6" library="con-wago-500" deviceset="W237-4" device=""/>
<part name="X7" library="con-wago-500" deviceset="W237-4" device=""/>
<part name="X8" library="con-wago-500" deviceset="W237-4" device=""/>
<part name="P+3" library="supply1" deviceset="VCC" device=""/>
<part name="P+4" library="supply1" deviceset="VCC" device=""/>
<part name="P+5" library="supply1" deviceset="VCC" device=""/>
<part name="P+6" library="supply1" deviceset="VCC" device=""/>
<part name="X9" library="con-wago-500" deviceset="W237-102" device=""/>
<part name="X10" library="con-wago-500" deviceset="W237-102" device=""/>
<part name="X11" library="con-wago-500" deviceset="W237-103" device=""/>
<part name="X12" library="con-wago-500" deviceset="W237-103" device=""/>
<part name="X13" library="con-wago-500" deviceset="W237-103" device=""/>
<part name="GND12" library="supply1" deviceset="GND" device=""/>
<part name="GND13" library="supply1" deviceset="GND" device=""/>
</parts>
<sheets>
<sheet>
<plain>
</plain>
<instances>
<instance part="IC1" gate="A" x="10.16" y="81.28"/>
<instance part="IC2" gate="A" x="10.16" y="33.02"/>
<instance part="U$1" gate="G$1" x="76.2" y="81.28"/>
<instance part="U$3" gate="G$1" x="76.2" y="33.02"/>
<instance part="GND1" gate="1" x="45.72" y="55.88"/>
<instance part="GND2" gate="1" x="45.72" y="10.16"/>
<instance part="GND3" gate="1" x="-2.54" y="63.5"/>
<instance part="GND4" gate="1" x="-2.54" y="15.24"/>
<instance part="P+1" gate="VCC" x="-35.56" y="96.52"/>
<instance part="IC3" gate="A" x="154.94" y="81.28"/>
<instance part="U$2" gate="G$1" x="223.52" y="81.28"/>
<instance part="U$4" gate="G$1" x="223.52" y="33.02"/>
<instance part="IC4" gate="A" x="154.94" y="33.02"/>
<instance part="GND6" gate="1" x="142.24" y="63.5"/>
<instance part="GND7" gate="1" x="142.24" y="15.24"/>
<instance part="GND8" gate="1" x="195.58" y="55.88"/>
<instance part="GND9" gate="1" x="195.58" y="7.62"/>
<instance part="GND10" gate="1" x="-17.78" y="104.14"/>
<instance part="X1" gate="-1" x="119.38" y="101.6" rot="R180"/>
<instance part="X1" gate="-2" x="119.38" y="96.52" rot="R180"/>
<instance part="X1" gate="-3" x="119.38" y="91.44" rot="R180"/>
<instance part="X1" gate="-4" x="119.38" y="86.36" rot="R180"/>
<instance part="X2" gate="-1" x="119.38" y="81.28" rot="R180"/>
<instance part="X2" gate="-2" x="119.38" y="76.2" rot="R180"/>
<instance part="X2" gate="-3" x="119.38" y="71.12" rot="R180"/>
<instance part="X2" gate="-4" x="119.38" y="66.04" rot="R180"/>
<instance part="X3" gate="-1" x="119.38" y="53.34" rot="R180"/>
<instance part="X3" gate="-2" x="119.38" y="48.26" rot="R180"/>
<instance part="X3" gate="-3" x="119.38" y="43.18" rot="R180"/>
<instance part="X3" gate="-4" x="119.38" y="38.1" rot="R180"/>
<instance part="X4" gate="-1" x="119.38" y="33.02" rot="R180"/>
<instance part="X4" gate="-2" x="119.38" y="27.94" rot="R180"/>
<instance part="X4" gate="-3" x="119.38" y="22.86" rot="R180"/>
<instance part="X4" gate="-4" x="119.38" y="17.78" rot="R180"/>
<instance part="X5" gate="-1" x="266.7" y="101.6" rot="R180"/>
<instance part="X5" gate="-2" x="266.7" y="96.52" rot="R180"/>
<instance part="X5" gate="-3" x="266.7" y="91.44" rot="R180"/>
<instance part="X5" gate="-4" x="266.7" y="86.36" rot="R180"/>
<instance part="X6" gate="-1" x="266.7" y="81.28" rot="R180"/>
<instance part="X6" gate="-2" x="266.7" y="76.2" rot="R180"/>
<instance part="X6" gate="-3" x="266.7" y="71.12" rot="R180"/>
<instance part="X6" gate="-4" x="266.7" y="66.04" rot="R180"/>
<instance part="X7" gate="-1" x="266.7" y="53.34" rot="R180"/>
<instance part="X7" gate="-2" x="266.7" y="48.26" rot="R180"/>
<instance part="X7" gate="-3" x="266.7" y="43.18" rot="R180"/>
<instance part="X7" gate="-4" x="266.7" y="38.1" rot="R180"/>
<instance part="X8" gate="-1" x="266.7" y="33.02" rot="R180"/>
<instance part="X8" gate="-2" x="266.7" y="27.94" rot="R180"/>
<instance part="X8" gate="-3" x="266.7" y="22.86" rot="R180"/>
<instance part="X8" gate="-4" x="266.7" y="17.78" rot="R180"/>
<instance part="P+3" gate="VCC" x="-5.08" y="96.52"/>
<instance part="P+4" gate="VCC" x="-7.62" y="35.56" rot="R90"/>
<instance part="P+5" gate="VCC" x="132.08" y="83.82" rot="R90"/>
<instance part="P+6" gate="VCC" x="132.08" y="35.56" rot="R90"/>
<instance part="X9" gate="-1" x="-40.64" y="86.36"/>
<instance part="X9" gate="-2" x="-40.64" y="81.28"/>
<instance part="X10" gate="-1" x="-25.4" y="86.36"/>
<instance part="X10" gate="-2" x="-25.4" y="81.28"/>
<instance part="X11" gate="-1" x="-40.64" y="76.2"/>
<instance part="X11" gate="-2" x="-40.64" y="71.12"/>
<instance part="X11" gate="-3" x="-40.64" y="66.04"/>
<instance part="X12" gate="-1" x="-25.4" y="76.2"/>
<instance part="X12" gate="-2" x="-25.4" y="71.12"/>
<instance part="X12" gate="-3" x="-25.4" y="66.04"/>
<instance part="X13" gate="-1" x="-22.86" y="119.38"/>
<instance part="X13" gate="-2" x="-22.86" y="114.3"/>
<instance part="X13" gate="-3" x="-22.86" y="109.22"/>
<instance part="GND12" gate="1" x="-33.02" y="78.74"/>
<instance part="GND13" gate="1" x="-17.78" y="78.74"/>
</instances>
<busses>
</busses>
<nets>
<net name="N$1" class="0">
<segment>
<pinref part="IC1" gate="A" pin="QH*"/>
<wire x1="22.86" y1="68.58" x2="25.4" y2="68.58" width="0.1524" layer="91"/>
<wire x1="25.4" y1="68.58" x2="25.4" y2="60.96" width="0.1524" layer="91"/>
<wire x1="25.4" y1="60.96" x2="-5.08" y2="60.96" width="0.1524" layer="91"/>
<wire x1="-5.08" y1="60.96" x2="-5.08" y2="43.18" width="0.1524" layer="91"/>
<pinref part="IC2" gate="A" pin="SER"/>
<wire x1="-5.08" y1="43.18" x2="-2.54" y2="43.18" width="0.1524" layer="91"/>
</segment>
</net>
<net name="GND" class="0">
<segment>
<pinref part="GND2" gate="1" pin="GND"/>
<pinref part="U$3" gate="G$1" pin="GEN"/>
<wire x1="45.72" y1="12.7" x2="48.26" y2="12.7" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="GND1" gate="1" pin="GND"/>
<wire x1="45.72" y1="58.42" x2="45.72" y2="60.96" width="0.1524" layer="91"/>
<pinref part="U$1" gate="G$1" pin="GEN"/>
<wire x1="45.72" y1="60.96" x2="48.26" y2="60.96" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="GND4" gate="1" pin="GND"/>
<pinref part="IC2" gate="A" pin="G"/>
<wire x1="-2.54" y1="17.78" x2="-2.54" y2="20.32" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="GND3" gate="1" pin="GND"/>
<pinref part="IC1" gate="A" pin="G"/>
<wire x1="-2.54" y1="66.04" x2="-2.54" y2="68.58" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="GND7" gate="1" pin="GND"/>
<pinref part="IC4" gate="A" pin="G"/>
<wire x1="142.24" y1="17.78" x2="142.24" y2="20.32" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="GND6" gate="1" pin="GND"/>
<pinref part="IC3" gate="A" pin="G"/>
<wire x1="142.24" y1="66.04" x2="142.24" y2="68.58" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="GND9" gate="1" pin="GND"/>
<pinref part="U$4" gate="G$1" pin="GEN"/>
<wire x1="195.58" y1="10.16" x2="195.58" y2="12.7" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="GND8" gate="1" pin="GND"/>
<pinref part="U$2" gate="G$1" pin="GEN"/>
<wire x1="195.58" y1="58.42" x2="195.58" y2="60.96" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="X9" gate="-2" pin="KL"/>
<pinref part="GND12" gate="1" pin="GND"/>
<wire x1="-35.56" y1="81.28" x2="-33.02" y2="81.28" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="X10" gate="-2" pin="KL"/>
<pinref part="GND13" gate="1" pin="GND"/>
<wire x1="-20.32" y1="81.28" x2="-17.78" y2="81.28" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="GND10" gate="1" pin="GND"/>
<pinref part="X13" gate="-3" pin="KL"/>
<wire x1="-17.78" y1="106.68" x2="-17.78" y2="109.22" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$19" class="0">
<segment>
<pinref part="IC1" gate="A" pin="SER"/>
<wire x1="-2.54" y1="91.44" x2="-48.26" y2="91.44" width="0.1524" layer="91"/>
<wire x1="-48.26" y1="91.44" x2="-48.26" y2="63.5" width="0.1524" layer="91"/>
<pinref part="X11" gate="-3" pin="KL"/>
<wire x1="-48.26" y1="63.5" x2="-35.56" y2="63.5" width="0.1524" layer="91"/>
<wire x1="-35.56" y1="63.5" x2="-35.56" y2="66.04" width="0.1524" layer="91"/>
</segment>
</net>
<net name="VCC" class="0">
<segment>
<pinref part="IC1" gate="A" pin="SCL"/>
<pinref part="P+3" gate="VCC" pin="VCC"/>
<wire x1="-2.54" y1="83.82" x2="-5.08" y2="83.82" width="0.1524" layer="91"/>
<wire x1="-5.08" y1="83.82" x2="-5.08" y2="93.98" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="P+4" gate="VCC" pin="VCC"/>
<pinref part="IC2" gate="A" pin="SCL"/>
<wire x1="-5.08" y1="35.56" x2="-2.54" y2="35.56" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="P+6" gate="VCC" pin="VCC"/>
<pinref part="IC4" gate="A" pin="SCL"/>
<wire x1="134.62" y1="35.56" x2="142.24" y2="35.56" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="X9" gate="-1" pin="KL"/>
<pinref part="P+1" gate="VCC" pin="VCC"/>
<wire x1="-35.56" y1="86.36" x2="-35.56" y2="93.98" width="0.1524" layer="91"/>
<pinref part="X10" gate="-1" pin="KL"/>
<wire x1="-35.56" y1="93.98" x2="-20.32" y2="93.98" width="0.1524" layer="91"/>
<wire x1="-20.32" y1="93.98" x2="-20.32" y2="86.36" width="0.1524" layer="91"/>
<junction x="-35.56" y="93.98"/>
</segment>
<segment>
<pinref part="P+5" gate="VCC" pin="VCC"/>
<pinref part="IC3" gate="A" pin="SCL"/>
<wire x1="134.62" y1="83.82" x2="142.24" y2="83.82" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$69" class="0">
<segment>
<pinref part="IC2" gate="A" pin="QH*"/>
<wire x1="22.86" y1="20.32" x2="22.86" y2="2.54" width="0.1524" layer="91"/>
<wire x1="22.86" y1="2.54" x2="127" y2="2.54" width="0.1524" layer="91"/>
<wire x1="127" y1="2.54" x2="127" y2="91.44" width="0.1524" layer="91"/>
<pinref part="IC3" gate="A" pin="SER"/>
<wire x1="127" y1="91.44" x2="142.24" y2="91.44" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$70" class="0">
<segment>
<pinref part="IC3" gate="A" pin="QH*"/>
<wire x1="167.64" y1="68.58" x2="167.64" y2="48.26" width="0.1524" layer="91"/>
<pinref part="IC4" gate="A" pin="SER"/>
<wire x1="167.64" y1="48.26" x2="142.24" y2="48.26" width="0.1524" layer="91"/>
<wire x1="142.24" y1="48.26" x2="142.24" y2="43.18" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$71" class="0">
<segment>
<wire x1="124.46" y1="124.46" x2="124.46" y2="60.96" width="0.1524" layer="91"/>
<pinref part="U$1" gate="G$1" pin="COMMON-FREE-WHEELING-DIODES"/>
<wire x1="124.46" y1="60.96" x2="101.6" y2="60.96" width="0.1524" layer="91"/>
<junction x="124.46" y="60.96"/>
<wire x1="124.46" y1="60.96" x2="124.46" y2="12.7" width="0.1524" layer="91"/>
<pinref part="U$3" gate="G$1" pin="COMMON-FREE-WHEELING-DIODES"/>
<wire x1="124.46" y1="12.7" x2="101.6" y2="12.7" width="0.1524" layer="91"/>
<wire x1="124.46" y1="124.46" x2="274.32" y2="124.46" width="0.1524" layer="91"/>
<wire x1="274.32" y1="124.46" x2="274.32" y2="60.96" width="0.1524" layer="91"/>
<pinref part="U$2" gate="G$1" pin="COMMON-FREE-WHEELING-DIODES"/>
<wire x1="274.32" y1="60.96" x2="248.92" y2="60.96" width="0.1524" layer="91"/>
<pinref part="U$4" gate="G$1" pin="COMMON-FREE-WHEELING-DIODES"/>
<wire x1="248.92" y1="12.7" x2="274.32" y2="12.7" width="0.1524" layer="91"/>
<wire x1="274.32" y1="12.7" x2="274.32" y2="60.96" width="0.1524" layer="91"/>
<junction x="274.32" y="60.96"/>
<pinref part="X13" gate="-1" pin="KL"/>
<wire x1="-17.78" y1="119.38" x2="-15.24" y2="119.38" width="0.1524" layer="91"/>
<wire x1="-15.24" y1="119.38" x2="-15.24" y2="114.3" width="0.1524" layer="91"/>
<pinref part="X13" gate="-2" pin="KL"/>
<wire x1="-15.24" y1="114.3" x2="-17.78" y2="114.3" width="0.1524" layer="91"/>
<wire x1="124.46" y1="124.46" x2="-15.24" y2="124.46" width="0.1524" layer="91"/>
<wire x1="-15.24" y1="124.46" x2="-15.24" y2="119.38" width="0.1524" layer="91"/>
<junction x="-15.24" y="119.38"/>
</segment>
</net>
<net name="N$72" class="0">
<segment>
<pinref part="IC4" gate="A" pin="QH*"/>
<wire x1="167.64" y1="20.32" x2="170.18" y2="20.32" width="0.1524" layer="91"/>
<wire x1="170.18" y1="20.32" x2="170.18" y2="-2.54" width="0.1524" layer="91"/>
<wire x1="170.18" y1="-2.54" x2="-20.32" y2="-2.54" width="0.1524" layer="91"/>
<pinref part="X12" gate="-3" pin="KL"/>
<wire x1="-20.32" y1="-2.54" x2="-20.32" y2="66.04" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$4" class="0">
<segment>
<pinref part="IC1" gate="A" pin="QA"/>
<wire x1="22.86" y1="91.44" x2="43.18" y2="91.44" width="0.1524" layer="91"/>
<wire x1="43.18" y1="91.44" x2="43.18" y2="66.04" width="0.1524" layer="91"/>
<pinref part="U$1" gate="G$1" pin="IN8"/>
<wire x1="43.18" y1="66.04" x2="48.26" y2="66.04" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$5" class="0">
<segment>
<pinref part="IC1" gate="A" pin="QB"/>
<wire x1="22.86" y1="88.9" x2="40.64" y2="88.9" width="0.1524" layer="91"/>
<wire x1="40.64" y1="88.9" x2="40.64" y2="71.12" width="0.1524" layer="91"/>
<pinref part="U$1" gate="G$1" pin="IN7"/>
<wire x1="40.64" y1="71.12" x2="48.26" y2="71.12" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$6" class="0">
<segment>
<pinref part="IC1" gate="A" pin="QC"/>
<wire x1="22.86" y1="86.36" x2="38.1" y2="86.36" width="0.1524" layer="91"/>
<wire x1="38.1" y1="86.36" x2="38.1" y2="76.2" width="0.1524" layer="91"/>
<pinref part="U$1" gate="G$1" pin="IN6"/>
<wire x1="38.1" y1="76.2" x2="48.26" y2="76.2" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$7" class="0">
<segment>
<pinref part="IC1" gate="A" pin="QD"/>
<wire x1="22.86" y1="83.82" x2="35.56" y2="83.82" width="0.1524" layer="91"/>
<wire x1="35.56" y1="83.82" x2="35.56" y2="81.28" width="0.1524" layer="91"/>
<pinref part="U$1" gate="G$1" pin="IN5"/>
<wire x1="35.56" y1="81.28" x2="48.26" y2="81.28" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$8" class="0">
<segment>
<pinref part="IC1" gate="A" pin="QE"/>
<wire x1="22.86" y1="81.28" x2="33.02" y2="81.28" width="0.1524" layer="91"/>
<wire x1="33.02" y1="81.28" x2="33.02" y2="78.74" width="0.1524" layer="91"/>
<wire x1="33.02" y1="78.74" x2="45.72" y2="78.74" width="0.1524" layer="91"/>
<wire x1="45.72" y1="78.74" x2="45.72" y2="86.36" width="0.1524" layer="91"/>
<pinref part="U$1" gate="G$1" pin="IN4"/>
<wire x1="45.72" y1="86.36" x2="48.26" y2="86.36" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$9" class="0">
<segment>
<pinref part="IC1" gate="A" pin="QF"/>
<wire x1="22.86" y1="78.74" x2="30.48" y2="78.74" width="0.1524" layer="91"/>
<wire x1="30.48" y1="78.74" x2="30.48" y2="93.98" width="0.1524" layer="91"/>
<pinref part="U$1" gate="G$1" pin="IN3"/>
<wire x1="30.48" y1="93.98" x2="48.26" y2="93.98" width="0.1524" layer="91"/>
<wire x1="48.26" y1="93.98" x2="48.26" y2="91.44" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$10" class="0">
<segment>
<pinref part="IC1" gate="A" pin="QG"/>
<wire x1="22.86" y1="76.2" x2="27.94" y2="76.2" width="0.1524" layer="91"/>
<wire x1="27.94" y1="76.2" x2="27.94" y2="96.52" width="0.1524" layer="91"/>
<pinref part="U$1" gate="G$1" pin="IN2"/>
<wire x1="27.94" y1="96.52" x2="48.26" y2="96.52" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$11" class="0">
<segment>
<pinref part="IC1" gate="A" pin="QH"/>
<wire x1="22.86" y1="73.66" x2="25.4" y2="73.66" width="0.1524" layer="91"/>
<wire x1="25.4" y1="73.66" x2="25.4" y2="101.6" width="0.1524" layer="91"/>
<pinref part="U$1" gate="G$1" pin="IN1"/>
<wire x1="25.4" y1="101.6" x2="48.26" y2="101.6" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$2" class="0">
<segment>
<pinref part="IC2" gate="A" pin="QH"/>
<wire x1="22.86" y1="25.4" x2="25.4" y2="25.4" width="0.1524" layer="91"/>
<wire x1="25.4" y1="25.4" x2="25.4" y2="53.34" width="0.1524" layer="91"/>
<pinref part="U$3" gate="G$1" pin="IN1"/>
<wire x1="25.4" y1="53.34" x2="48.26" y2="53.34" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$12" class="0">
<segment>
<pinref part="IC2" gate="A" pin="QG"/>
<wire x1="22.86" y1="27.94" x2="27.94" y2="27.94" width="0.1524" layer="91"/>
<wire x1="27.94" y1="27.94" x2="27.94" y2="48.26" width="0.1524" layer="91"/>
<pinref part="U$3" gate="G$1" pin="IN2"/>
<wire x1="27.94" y1="48.26" x2="48.26" y2="48.26" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$13" class="0">
<segment>
<pinref part="IC2" gate="A" pin="QF"/>
<wire x1="22.86" y1="30.48" x2="30.48" y2="30.48" width="0.1524" layer="91"/>
<wire x1="30.48" y1="30.48" x2="30.48" y2="45.72" width="0.1524" layer="91"/>
<pinref part="U$3" gate="G$1" pin="IN3"/>
<wire x1="30.48" y1="45.72" x2="48.26" y2="45.72" width="0.1524" layer="91"/>
<wire x1="48.26" y1="45.72" x2="48.26" y2="43.18" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$14" class="0">
<segment>
<pinref part="U$3" gate="G$1" pin="IN8"/>
<wire x1="48.26" y1="17.78" x2="43.18" y2="17.78" width="0.1524" layer="91"/>
<wire x1="43.18" y1="17.78" x2="43.18" y2="43.18" width="0.1524" layer="91"/>
<pinref part="IC2" gate="A" pin="QA"/>
<wire x1="43.18" y1="43.18" x2="22.86" y2="43.18" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$15" class="0">
<segment>
<pinref part="IC2" gate="A" pin="QB"/>
<wire x1="22.86" y1="40.64" x2="40.64" y2="40.64" width="0.1524" layer="91"/>
<wire x1="40.64" y1="40.64" x2="40.64" y2="22.86" width="0.1524" layer="91"/>
<pinref part="U$3" gate="G$1" pin="IN7"/>
<wire x1="40.64" y1="22.86" x2="48.26" y2="22.86" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$16" class="0">
<segment>
<pinref part="IC2" gate="A" pin="QC"/>
<wire x1="22.86" y1="38.1" x2="38.1" y2="38.1" width="0.1524" layer="91"/>
<wire x1="38.1" y1="38.1" x2="38.1" y2="27.94" width="0.1524" layer="91"/>
<pinref part="U$3" gate="G$1" pin="IN6"/>
<wire x1="38.1" y1="27.94" x2="48.26" y2="27.94" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$17" class="0">
<segment>
<pinref part="IC2" gate="A" pin="QE"/>
<wire x1="22.86" y1="33.02" x2="33.02" y2="33.02" width="0.1524" layer="91"/>
<wire x1="33.02" y1="33.02" x2="33.02" y2="30.48" width="0.1524" layer="91"/>
<wire x1="33.02" y1="30.48" x2="45.72" y2="30.48" width="0.1524" layer="91"/>
<wire x1="45.72" y1="30.48" x2="45.72" y2="38.1" width="0.1524" layer="91"/>
<pinref part="U$3" gate="G$1" pin="IN4"/>
<wire x1="45.72" y1="38.1" x2="48.26" y2="38.1" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$18" class="0">
<segment>
<pinref part="IC2" gate="A" pin="QD"/>
<wire x1="22.86" y1="35.56" x2="35.56" y2="35.56" width="0.1524" layer="91"/>
<wire x1="35.56" y1="35.56" x2="35.56" y2="33.02" width="0.1524" layer="91"/>
<pinref part="U$3" gate="G$1" pin="IN5"/>
<wire x1="35.56" y1="33.02" x2="48.26" y2="33.02" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$37" class="0">
<segment>
<pinref part="IC3" gate="A" pin="QH"/>
<wire x1="167.64" y1="73.66" x2="170.18" y2="73.66" width="0.1524" layer="91"/>
<wire x1="170.18" y1="73.66" x2="170.18" y2="101.6" width="0.1524" layer="91"/>
<pinref part="U$2" gate="G$1" pin="IN1"/>
<wire x1="170.18" y1="101.6" x2="195.58" y2="101.6" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$38" class="0">
<segment>
<pinref part="IC3" gate="A" pin="QG"/>
<wire x1="167.64" y1="76.2" x2="172.72" y2="76.2" width="0.1524" layer="91"/>
<wire x1="172.72" y1="76.2" x2="172.72" y2="96.52" width="0.1524" layer="91"/>
<pinref part="U$2" gate="G$1" pin="IN2"/>
<wire x1="172.72" y1="96.52" x2="195.58" y2="96.52" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$39" class="0">
<segment>
<pinref part="IC3" gate="A" pin="QF"/>
<wire x1="167.64" y1="78.74" x2="175.26" y2="78.74" width="0.1524" layer="91"/>
<wire x1="175.26" y1="78.74" x2="175.26" y2="93.98" width="0.1524" layer="91"/>
<pinref part="U$2" gate="G$1" pin="IN3"/>
<wire x1="175.26" y1="93.98" x2="195.58" y2="93.98" width="0.1524" layer="91"/>
<wire x1="195.58" y1="93.98" x2="195.58" y2="91.44" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$40" class="0">
<segment>
<pinref part="IC3" gate="A" pin="QE"/>
<wire x1="167.64" y1="81.28" x2="177.8" y2="81.28" width="0.1524" layer="91"/>
<wire x1="177.8" y1="81.28" x2="177.8" y2="78.74" width="0.1524" layer="91"/>
<wire x1="177.8" y1="78.74" x2="193.04" y2="78.74" width="0.1524" layer="91"/>
<wire x1="193.04" y1="78.74" x2="193.04" y2="86.36" width="0.1524" layer="91"/>
<pinref part="U$2" gate="G$1" pin="IN4"/>
<wire x1="193.04" y1="86.36" x2="195.58" y2="86.36" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$41" class="0">
<segment>
<pinref part="IC3" gate="A" pin="QD"/>
<wire x1="167.64" y1="83.82" x2="180.34" y2="83.82" width="0.1524" layer="91"/>
<wire x1="180.34" y1="83.82" x2="180.34" y2="81.28" width="0.1524" layer="91"/>
<pinref part="U$2" gate="G$1" pin="IN5"/>
<wire x1="180.34" y1="81.28" x2="195.58" y2="81.28" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$42" class="0">
<segment>
<pinref part="IC3" gate="A" pin="QC"/>
<wire x1="167.64" y1="86.36" x2="182.88" y2="86.36" width="0.1524" layer="91"/>
<wire x1="182.88" y1="86.36" x2="182.88" y2="76.2" width="0.1524" layer="91"/>
<pinref part="U$2" gate="G$1" pin="IN6"/>
<wire x1="182.88" y1="76.2" x2="195.58" y2="76.2" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$43" class="0">
<segment>
<pinref part="IC3" gate="A" pin="QB"/>
<wire x1="167.64" y1="88.9" x2="185.42" y2="88.9" width="0.1524" layer="91"/>
<wire x1="185.42" y1="88.9" x2="185.42" y2="71.12" width="0.1524" layer="91"/>
<pinref part="U$2" gate="G$1" pin="IN7"/>
<wire x1="185.42" y1="71.12" x2="195.58" y2="71.12" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$44" class="0">
<segment>
<pinref part="IC3" gate="A" pin="QA"/>
<wire x1="167.64" y1="91.44" x2="187.96" y2="91.44" width="0.1524" layer="91"/>
<wire x1="187.96" y1="91.44" x2="187.96" y2="66.04" width="0.1524" layer="91"/>
<pinref part="U$2" gate="G$1" pin="IN8"/>
<wire x1="187.96" y1="66.04" x2="195.58" y2="66.04" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$53" class="0">
<segment>
<pinref part="IC4" gate="A" pin="QH"/>
<wire x1="167.64" y1="25.4" x2="170.18" y2="25.4" width="0.1524" layer="91"/>
<wire x1="170.18" y1="25.4" x2="170.18" y2="53.34" width="0.1524" layer="91"/>
<pinref part="U$4" gate="G$1" pin="IN1"/>
<wire x1="170.18" y1="53.34" x2="195.58" y2="53.34" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$54" class="0">
<segment>
<pinref part="IC4" gate="A" pin="QG"/>
<wire x1="167.64" y1="27.94" x2="172.72" y2="27.94" width="0.1524" layer="91"/>
<wire x1="172.72" y1="27.94" x2="172.72" y2="48.26" width="0.1524" layer="91"/>
<pinref part="U$4" gate="G$1" pin="IN2"/>
<wire x1="172.72" y1="48.26" x2="195.58" y2="48.26" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$55" class="0">
<segment>
<pinref part="IC4" gate="A" pin="QF"/>
<wire x1="167.64" y1="30.48" x2="175.26" y2="30.48" width="0.1524" layer="91"/>
<wire x1="175.26" y1="30.48" x2="175.26" y2="45.72" width="0.1524" layer="91"/>
<pinref part="U$4" gate="G$1" pin="IN3"/>
<wire x1="175.26" y1="45.72" x2="195.58" y2="45.72" width="0.1524" layer="91"/>
<wire x1="195.58" y1="45.72" x2="195.58" y2="43.18" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$56" class="0">
<segment>
<pinref part="IC4" gate="A" pin="QE"/>
<wire x1="167.64" y1="33.02" x2="177.8" y2="33.02" width="0.1524" layer="91"/>
<wire x1="177.8" y1="33.02" x2="177.8" y2="30.48" width="0.1524" layer="91"/>
<wire x1="177.8" y1="30.48" x2="193.04" y2="30.48" width="0.1524" layer="91"/>
<wire x1="193.04" y1="30.48" x2="193.04" y2="38.1" width="0.1524" layer="91"/>
<pinref part="U$4" gate="G$1" pin="IN4"/>
<wire x1="193.04" y1="38.1" x2="195.58" y2="38.1" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$57" class="0">
<segment>
<pinref part="IC4" gate="A" pin="QD"/>
<wire x1="167.64" y1="35.56" x2="180.34" y2="35.56" width="0.1524" layer="91"/>
<wire x1="180.34" y1="35.56" x2="180.34" y2="33.02" width="0.1524" layer="91"/>
<pinref part="U$4" gate="G$1" pin="IN5"/>
<wire x1="180.34" y1="33.02" x2="195.58" y2="33.02" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$58" class="0">
<segment>
<pinref part="IC4" gate="A" pin="QC"/>
<wire x1="167.64" y1="38.1" x2="182.88" y2="38.1" width="0.1524" layer="91"/>
<wire x1="182.88" y1="38.1" x2="182.88" y2="27.94" width="0.1524" layer="91"/>
<pinref part="U$4" gate="G$1" pin="IN6"/>
<wire x1="182.88" y1="27.94" x2="195.58" y2="27.94" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$59" class="0">
<segment>
<pinref part="IC4" gate="A" pin="QB"/>
<wire x1="167.64" y1="40.64" x2="185.42" y2="40.64" width="0.1524" layer="91"/>
<wire x1="185.42" y1="40.64" x2="185.42" y2="22.86" width="0.1524" layer="91"/>
<pinref part="U$4" gate="G$1" pin="IN7"/>
<wire x1="185.42" y1="22.86" x2="195.58" y2="22.86" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$60" class="0">
<segment>
<pinref part="IC4" gate="A" pin="QA"/>
<wire x1="167.64" y1="43.18" x2="187.96" y2="43.18" width="0.1524" layer="91"/>
<wire x1="187.96" y1="43.18" x2="187.96" y2="17.78" width="0.1524" layer="91"/>
<pinref part="U$4" gate="G$1" pin="IN8"/>
<wire x1="187.96" y1="17.78" x2="195.58" y2="17.78" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$21" class="0">
<segment>
<pinref part="U$1" gate="G$1" pin="OUT1"/>
<pinref part="X1" gate="-1" pin="KL"/>
<wire x1="101.6" y1="101.6" x2="114.3" y2="101.6" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$22" class="0">
<segment>
<pinref part="U$1" gate="G$1" pin="OUT2"/>
<pinref part="X1" gate="-2" pin="KL"/>
<wire x1="101.6" y1="96.52" x2="114.3" y2="96.52" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$23" class="0">
<segment>
<pinref part="U$1" gate="G$1" pin="OUT3"/>
<pinref part="X1" gate="-3" pin="KL"/>
<wire x1="101.6" y1="91.44" x2="114.3" y2="91.44" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$24" class="0">
<segment>
<pinref part="U$1" gate="G$1" pin="OUT4"/>
<pinref part="X1" gate="-4" pin="KL"/>
<wire x1="101.6" y1="86.36" x2="114.3" y2="86.36" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$25" class="0">
<segment>
<pinref part="U$1" gate="G$1" pin="OUT5"/>
<pinref part="X2" gate="-1" pin="KL"/>
<wire x1="101.6" y1="81.28" x2="114.3" y2="81.28" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$26" class="0">
<segment>
<pinref part="U$1" gate="G$1" pin="OUT6"/>
<pinref part="X2" gate="-2" pin="KL"/>
<wire x1="101.6" y1="76.2" x2="114.3" y2="76.2" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$27" class="0">
<segment>
<pinref part="U$1" gate="G$1" pin="OUT7"/>
<pinref part="X2" gate="-3" pin="KL"/>
<wire x1="101.6" y1="71.12" x2="114.3" y2="71.12" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$28" class="0">
<segment>
<pinref part="U$1" gate="G$1" pin="OUT8"/>
<pinref part="X2" gate="-4" pin="KL"/>
<wire x1="101.6" y1="66.04" x2="114.3" y2="66.04" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$29" class="0">
<segment>
<pinref part="U$3" gate="G$1" pin="OUT1"/>
<pinref part="X3" gate="-1" pin="KL"/>
<wire x1="101.6" y1="53.34" x2="114.3" y2="53.34" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$30" class="0">
<segment>
<pinref part="U$3" gate="G$1" pin="OUT2"/>
<pinref part="X3" gate="-2" pin="KL"/>
<wire x1="101.6" y1="48.26" x2="114.3" y2="48.26" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$31" class="0">
<segment>
<pinref part="U$3" gate="G$1" pin="OUT3"/>
<pinref part="X3" gate="-3" pin="KL"/>
<wire x1="101.6" y1="43.18" x2="114.3" y2="43.18" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$32" class="0">
<segment>
<pinref part="U$3" gate="G$1" pin="OUT4"/>
<pinref part="X3" gate="-4" pin="KL"/>
<wire x1="101.6" y1="38.1" x2="114.3" y2="38.1" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$33" class="0">
<segment>
<pinref part="U$3" gate="G$1" pin="OUT5"/>
<pinref part="X4" gate="-1" pin="KL"/>
<wire x1="101.6" y1="33.02" x2="114.3" y2="33.02" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$34" class="0">
<segment>
<pinref part="U$3" gate="G$1" pin="OUT6"/>
<pinref part="X4" gate="-2" pin="KL"/>
<wire x1="101.6" y1="27.94" x2="114.3" y2="27.94" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$35" class="0">
<segment>
<pinref part="U$3" gate="G$1" pin="OUT7"/>
<pinref part="X4" gate="-3" pin="KL"/>
<wire x1="101.6" y1="22.86" x2="114.3" y2="22.86" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$36" class="0">
<segment>
<pinref part="U$3" gate="G$1" pin="OUT8"/>
<pinref part="X4" gate="-4" pin="KL"/>
<wire x1="101.6" y1="17.78" x2="114.3" y2="17.78" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$45" class="0">
<segment>
<pinref part="U$4" gate="G$1" pin="OUT1"/>
<wire x1="246.38" y1="53.34" x2="248.92" y2="53.34" width="0.1524" layer="91"/>
<pinref part="X7" gate="-1" pin="KL"/>
<wire x1="248.92" y1="53.34" x2="261.62" y2="53.34" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$46" class="0">
<segment>
<pinref part="U$2" gate="G$1" pin="OUT1"/>
<pinref part="X5" gate="-1" pin="KL"/>
<wire x1="248.92" y1="101.6" x2="261.62" y2="101.6" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$47" class="0">
<segment>
<pinref part="U$2" gate="G$1" pin="OUT2"/>
<pinref part="X5" gate="-2" pin="KL"/>
<wire x1="248.92" y1="96.52" x2="261.62" y2="96.52" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$48" class="0">
<segment>
<pinref part="U$2" gate="G$1" pin="OUT3"/>
<pinref part="X5" gate="-3" pin="KL"/>
<wire x1="248.92" y1="91.44" x2="261.62" y2="91.44" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$49" class="0">
<segment>
<pinref part="U$2" gate="G$1" pin="OUT4"/>
<pinref part="X5" gate="-4" pin="KL"/>
<wire x1="248.92" y1="86.36" x2="261.62" y2="86.36" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$50" class="0">
<segment>
<pinref part="U$2" gate="G$1" pin="OUT5"/>
<pinref part="X6" gate="-1" pin="KL"/>
<wire x1="248.92" y1="81.28" x2="261.62" y2="81.28" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$51" class="0">
<segment>
<pinref part="U$2" gate="G$1" pin="OUT6"/>
<pinref part="X6" gate="-2" pin="KL"/>
<wire x1="248.92" y1="76.2" x2="261.62" y2="76.2" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$52" class="0">
<segment>
<pinref part="U$2" gate="G$1" pin="OUT7"/>
<pinref part="X6" gate="-3" pin="KL"/>
<wire x1="248.92" y1="71.12" x2="261.62" y2="71.12" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$61" class="0">
<segment>
<pinref part="U$2" gate="G$1" pin="OUT8"/>
<pinref part="X6" gate="-4" pin="KL"/>
<wire x1="248.92" y1="66.04" x2="261.62" y2="66.04" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$62" class="0">
<segment>
<pinref part="U$4" gate="G$1" pin="OUT2"/>
<pinref part="X7" gate="-2" pin="KL"/>
<wire x1="248.92" y1="48.26" x2="261.62" y2="48.26" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$63" class="0">
<segment>
<pinref part="U$4" gate="G$1" pin="OUT3"/>
<pinref part="X7" gate="-3" pin="KL"/>
<wire x1="248.92" y1="43.18" x2="261.62" y2="43.18" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$64" class="0">
<segment>
<pinref part="U$4" gate="G$1" pin="OUT4"/>
<pinref part="X7" gate="-4" pin="KL"/>
<wire x1="248.92" y1="38.1" x2="261.62" y2="38.1" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$65" class="0">
<segment>
<pinref part="U$4" gate="G$1" pin="OUT5"/>
<pinref part="X8" gate="-1" pin="KL"/>
<wire x1="248.92" y1="33.02" x2="261.62" y2="33.02" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$66" class="0">
<segment>
<pinref part="U$4" gate="G$1" pin="OUT6"/>
<pinref part="X8" gate="-2" pin="KL"/>
<wire x1="248.92" y1="27.94" x2="261.62" y2="27.94" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$67" class="0">
<segment>
<pinref part="U$4" gate="G$1" pin="OUT7"/>
<pinref part="X8" gate="-3" pin="KL"/>
<wire x1="248.92" y1="22.86" x2="261.62" y2="22.86" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$68" class="0">
<segment>
<pinref part="U$4" gate="G$1" pin="OUT8"/>
<pinref part="X8" gate="-4" pin="KL"/>
<wire x1="248.92" y1="17.78" x2="261.62" y2="17.78" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$89" class="0">
<segment>
<pinref part="X12" gate="-1" pin="KL"/>
<wire x1="-20.32" y1="73.66" x2="-20.32" y2="76.2" width="0.1524" layer="91"/>
<pinref part="IC1" gate="A" pin="SCK"/>
<wire x1="-7.62" y1="86.36" x2="-2.54" y2="86.36" width="0.1524" layer="91"/>
<pinref part="IC2" gate="A" pin="SCK"/>
<wire x1="-2.54" y1="38.1" x2="-7.62" y2="38.1" width="0.1524" layer="91"/>
<wire x1="-7.62" y1="38.1" x2="-7.62" y2="73.66" width="0.1524" layer="91"/>
<wire x1="-7.62" y1="73.66" x2="-7.62" y2="86.36" width="0.1524" layer="91"/>
<wire x1="-7.62" y1="86.36" x2="-7.62" y2="109.22" width="0.1524" layer="91"/>
<wire x1="-7.62" y1="109.22" x2="139.7" y2="109.22" width="0.1524" layer="91"/>
<wire x1="139.7" y1="109.22" x2="139.7" y2="86.36" width="0.1524" layer="91"/>
<pinref part="IC3" gate="A" pin="SCK"/>
<wire x1="139.7" y1="86.36" x2="142.24" y2="86.36" width="0.1524" layer="91"/>
<junction x="-7.62" y="86.36"/>
<wire x1="139.7" y1="86.36" x2="139.7" y2="38.1" width="0.1524" layer="91"/>
<pinref part="IC4" gate="A" pin="SCK"/>
<wire x1="139.7" y1="38.1" x2="142.24" y2="38.1" width="0.1524" layer="91"/>
<junction x="139.7" y="86.36"/>
<wire x1="-20.32" y1="73.66" x2="-7.62" y2="73.66" width="0.1524" layer="91"/>
<junction x="-7.62" y="73.66"/>
<wire x1="-20.32" y1="73.66" x2="-35.56" y2="73.66" width="0.1524" layer="91"/>
<pinref part="X11" gate="-1" pin="KL"/>
<wire x1="-35.56" y1="73.66" x2="-35.56" y2="76.2" width="0.1524" layer="91"/>
<junction x="-20.32" y="73.66"/>
</segment>
</net>
<net name="N$90" class="0">
<segment>
<pinref part="X11" gate="-2" pin="KL"/>
<wire x1="-35.56" y1="71.12" x2="-35.56" y2="68.58" width="0.1524" layer="91"/>
<pinref part="X12" gate="-2" pin="KL"/>
<wire x1="-35.56" y1="68.58" x2="-20.32" y2="68.58" width="0.1524" layer="91"/>
<wire x1="-20.32" y1="68.58" x2="-20.32" y2="71.12" width="0.1524" layer="91"/>
<pinref part="IC1" gate="A" pin="RCK"/>
<wire x1="-12.7" y1="78.74" x2="-2.54" y2="78.74" width="0.1524" layer="91"/>
<pinref part="IC2" gate="A" pin="RCK"/>
<wire x1="-12.7" y1="78.74" x2="-12.7" y2="68.58" width="0.1524" layer="91"/>
<wire x1="-12.7" y1="68.58" x2="-12.7" y2="30.48" width="0.1524" layer="91"/>
<wire x1="-12.7" y1="30.48" x2="-2.54" y2="30.48" width="0.1524" layer="91"/>
<wire x1="-12.7" y1="78.74" x2="-12.7" y2="111.76" width="0.1524" layer="91"/>
<wire x1="-12.7" y1="111.76" x2="137.16" y2="111.76" width="0.1524" layer="91"/>
<wire x1="137.16" y1="111.76" x2="137.16" y2="78.74" width="0.1524" layer="91"/>
<pinref part="IC3" gate="A" pin="RCK"/>
<wire x1="137.16" y1="78.74" x2="142.24" y2="78.74" width="0.1524" layer="91"/>
<junction x="-12.7" y="78.74"/>
<wire x1="137.16" y1="78.74" x2="137.16" y2="30.48" width="0.1524" layer="91"/>
<pinref part="IC4" gate="A" pin="RCK"/>
<wire x1="137.16" y1="30.48" x2="142.24" y2="30.48" width="0.1524" layer="91"/>
<junction x="137.16" y="78.74"/>
<wire x1="-20.32" y1="68.58" x2="-12.7" y2="68.58" width="0.1524" layer="91"/>
<junction x="-20.32" y="68.58"/>
<junction x="-12.7" y="68.58"/>
</segment>
</net>
</nets>
</sheet>
</sheets>
</schematic>
</drawing>
</eagle>
