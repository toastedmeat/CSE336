/*
	Copyright (c) 2004-2011, The Dojo Foundation All Rights Reserved.
	Available via Academic Free License >= 2.1 OR the modified BSD license.
	see: http://dojotoolkit.org/license for details
*/


dojo._xdResourceLoaded(function(_1,_2,_3){return {depends:[["provide","dijit.layout._ContentPaneResizeMixin"],["require","dijit._Contained"],["require","dijit.layout._LayoutWidget"]],defineResource:function(_4,_5,_6){if(!_4._hasResource["dijit.layout._ContentPaneResizeMixin"]){_4._hasResource["dijit.layout._ContentPaneResizeMixin"]=true;_4.provide("dijit.layout._ContentPaneResizeMixin");_4.require("dijit._Contained");_4.require("dijit.layout._LayoutWidget");_4.declare("dijit.layout._ContentPaneResizeMixin",null,{doLayout:true,isContainer:true,isLayoutContainer:true,_startChildren:function(){_4.forEach(this.getChildren(),function(_7){_7.startup();_7._started=true;});},startup:function(){if(this._started){return;}var _8=_5._Contained.prototype.getParent.call(this);this._childOfLayoutWidget=_8&&_8.isLayoutContainer;this._needLayout=!this._childOfLayoutWidget;this.inherited(arguments);this._startChildren();if(this._isShown()){this._onShow();}if(!this._childOfLayoutWidget){this.connect(_4.isIE?this.domNode:_4.global,"onresize",function(){this._needLayout=!this._childOfLayoutWidget;this.resize();});}},_checkIfSingleChild:function(){var _9=_4.query("> *",this.containerNode).filter(function(_a){return _a.tagName!=="SCRIPT";}),_b=_9.filter(function(_c){return _4.hasAttr(_c,"data-dojo-type")||_4.hasAttr(_c,"dojoType")||_4.hasAttr(_c,"widgetId");}),_d=_4.filter(_b.map(_5.byNode),function(_e){return _e&&_e.domNode&&_e.resize;});if(_9.length==_b.length&&_d.length==1){this._singleChild=_d[0];}else{delete this._singleChild;}_4.toggleClass(this.containerNode,this.baseClass+"SingleChild",!!this._singleChild);},resize:function(_f,_10){if(!this._wasShown&&this.open!==false){this._onShow();}this._resizeCalled=true;this._scheduleLayout(_f,_10);},_scheduleLayout:function(_11,_12){if(this._isShown()){this._layout(_11,_12);}else{this._needLayout=true;this._changeSize=_11;this._resultSize=_12;}},_layout:function(_13,_14){if(_13){_4.marginBox(this.domNode,_13);}var cn=this.containerNode;if(cn===this.domNode){var mb=_14||{};_4.mixin(mb,_13||{});if(!("h" in mb)||!("w" in mb)){mb=_4.mixin(_4.marginBox(cn),mb);}this._contentBox=_5.layout.marginBox2contentBox(cn,mb);}else{this._contentBox=_4.contentBox(cn);}this._layoutChildren();delete this._needLayout;},_layoutChildren:function(){if(this.doLayout){this._checkIfSingleChild();}if(this._singleChild&&this._singleChild.resize){var cb=this._contentBox||_4.contentBox(this.containerNode);this._singleChild.resize({w:cb.w,h:cb.h});}else{_4.forEach(this.getChildren(),function(_15){if(_15.resize){_15.resize();}});}},_isShown:function(){if(this._childOfLayoutWidget){if(this._resizeCalled&&"open" in this){return this.open;}return this._resizeCalled;}else{if("open" in this){return this.open;}else{var _16=this.domNode,_17=this.domNode.parentNode;return (_16.style.display!="none")&&(_16.style.visibility!="hidden")&&!_4.hasClass(_16,"dijitHidden")&&_17&&_17.style&&(_17.style.display!="none");}}},_onShow:function(){if(this._needLayout){this._layout(this._changeSize,this._resultSize);}this.inherited(arguments);this._wasShown=true;}});}}};});