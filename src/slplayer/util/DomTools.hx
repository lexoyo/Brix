/*
 * This file is part of SLPlayer http://www.silexlabs.org/groups/labs/slplayer/
 * 
 * This project is © 2011-2012 Silex Labs and is released under the GPL License:
 * 
 * This program is free software; you can redistribute it and/or modify it under the terms 
 * of the GNU General Public License (GPL) as published by the Free Software Foundation; 
 * either version 2 of the License, or (at your option) any later version. 
 * 
 * This program is distributed in the hope that it will be useful, but WITHOUT ANY WARRANTY; 
 * without even the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. 
 * See the GNU General Public License for more details.
 * 
 * To read the license please visit http://www.gnu.org/copyleft/gpl.html
 */
package slplayer.util;

import js.Lib;
import js.Dom;

/**
 * TODO comment
 * 
 * @author Thomas Fétiveau
 */
class DomTools 
{
	/**
	 * Search for all children elements of the given element that have the given attribute with the given value.
	 * @param	elt the DOM element
	 * @param	attr the attr name to search for
	 * @param	value the attr value to search for, specifying '*' means "any value"
	 * @return an Array<HtmlDom>
	 */
	static public function getElementsByAttribute(elt : HtmlDom, attr:String, value:String):Array<HtmlDom>
	{
		var childElts = elt.getElementsByTagName('*');
		var filteredChildElts:Array<HtmlDom> = new Array();
		
		for (cCount in 0...childElts.length)
		{
			if ( childElts[cCount].getAttribute(attr)!=null && ( value == "*" || childElts[cCount].getAttribute(attr) == value) )
                filteredChildElts.push(childElts[cCount]);
		}
		return filteredChildElts;
	}
	
}