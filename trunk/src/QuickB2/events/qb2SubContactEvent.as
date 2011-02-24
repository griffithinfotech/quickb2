/**
 * Copyright (c) 2010 Johnson Center for Simulation at Pine Technical College
 * 
 * Permission is hereby granted, free of charge, to any person obtaining a copy
 * of this software and associated documentation files (the "Software"), to deal
 * in the Software without restriction, including without limitation the rights
 * to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
 * copies of the Software, and to permit persons to whom the Software is
 * furnished to do so, subject to the following conditions:
 * 
 * The above copyright notice and this permission notice shall be included in
 * all copies or substantial portions of the Software.
 * 
 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 * FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
 * AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 * LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
 * OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
 * THE SOFTWARE.
 */

package QuickB2.events 
{
	import As3Math.geo2d.*;
	import Box2DAS.Dynamics.Contacts.b2Contact;
	import flash.events.*;
	import QuickB2.*;
	import QuickB2.debugging.qb2DebugTraceUtils;
	import QuickB2.objects.*;
	import QuickB2.objects.tangibles.*;
	
	use namespace qb2_friend;
	
	/**
	 * ...
	 * @author Doug Koellmer
	 */
	public class qb2SubContactEvent extends qb2BaseContactEvent
	{
		public static const SUB_PRE_SOLVE:String       = "subPreSolve";
		public static const SUB_POST_SOLVE:String      = "subPostSolve";
		public static const SUB_CONTACT_STARTED:String = "subContactStarted";
		public static const SUB_CONTACT_ENDED:String   = "subContactEnded";
		
		qb2_friend var _shape1:qb2Shape, _shape2:qb2Shape;
		
		qb2_friend var _ancestorGroup:qb2Group;
		
		public function qb2SubContactEvent(type:String)
			{  super(type);  }
		
		public function get shape1():qb2Shape
			{  return _shape1;  }
		
		public function get shape2():qb2Shape
			{  return _shape2;  }
		
		public function get ancestorGroup():qb2Group
			{  return _ancestorGroup;  }
		
		public override function clone():Event
		{
			var evt:qb2SubContactEvent = new qb2SubContactEvent(type);
			evt._shape1        = _shape1;
			evt._shape2        = _shape2;
			evt._ancestorGroup = _ancestorGroup;
			evt._contactPoint  = _contactPoint;
			evt._contactNormal = _contactNormal;
			evt._contactWidth  = _contactWidth;
			evt._contactB2     = _contactB2;
			return evt;
		}
		
		public override function toString():String 
			{  return qb2DebugTraceUtils.formatToString(this, "qb2SubContactEvent");  }
	}
}