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

package QuickB2.effects 
{
	import QuickB2.debugging.*;
	import QuickB2.misc.*;
	import QuickB2.objects.tangibles.*;
	import QuickB2.qb2_errors;
	
	/**
	 * ...
	 * @author Doug Koellmer
	 */
	public class qb2Effect extends Object
	{
		public function qb2Effect() 
		{
			if ( (this as Object).constructor == qb2Effect )  throw qb2_errors.ABSTRACT_CLASS_ERROR;
		}
		
		public virtual function apply(toObject:qb2Tangible):void
		{
			
		}
		
		public function toString():String 
			{  return qb2DebugTraceSettings.formatToString(this, "qb2Effect");  }
	}
}