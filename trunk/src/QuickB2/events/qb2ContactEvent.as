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
	import flash.events.*;
	import QuickB2.*;
	import QuickB2.debugging.*;
	import QuickB2.objects.*;
	import QuickB2.objects.tangibles.*;
	
	use namespace qb2_friend;
	
	/**
	 * ...
	 * @author Doug Koellmer
	 */
	public class qb2ContactEvent extends qb2BaseContactEvent
	{
		public static const PRE_SOLVE:String       = "preSolve";
		public static const POST_SOLVE:String      = "postSolve";
		public static const CONTACT_STARTED:String = "contactStarted";
		public static const CONTACT_ENDED:String   = "contactEnded";
		
		qb2_friend var _localShape:qb2Shape, _otherShape:qb2Shape;
		
		qb2_friend var _localObject:qb2Tangible, _otherObject:qb2Tangible;
		
		public function qb2ContactEvent(type:String)
			{  super(type);  }
		
		public function get localShape():qb2Shape
			{  return _localShape;  }
		
		public function get otherShape():qb2Shape
			{  return _otherShape;  }
		
		public function get localObject():qb2Tangible
			{  return _localObject;  }
		
		public function get otherObject():qb2Tangible
			{  return _otherObject;  }
		
		public override function clone():Event
		{
			var evt:qb2ContactEvent = new qb2ContactEvent(type);
			evt._localShape    = _localShape;
			evt._otherShape    = _otherShape;
			evt._localObject   = _localObject;
			evt._otherObject   = _otherObject;
			evt._contactPoint  = _contactPoint;
			evt._contactNormal = _contactNormal;
			evt._contactWidth  = _contactWidth;
			evt._contactB2     = _contactB2;
			return evt;
		}
		
		public override function toString():String 
			{  return qb2DebugTraceUtils.formatToString(this, "qb2ContactEvent");  }
	}
}