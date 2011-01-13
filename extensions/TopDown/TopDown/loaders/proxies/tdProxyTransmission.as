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

package TopDown.loaders.proxies 
{
	import QuickB2.loaders.proxies.qb2ProxyUserObject;
	
	/**
	 * ...
	 * @author Doug Koellmer
	 */
	public class tdProxyTransmission extends qb2ProxyUserObject
	{
		[Inspectable(defaultValue="default", name='torqueConversion (default=0.8)')]
		public var torqueConversion:String = "default";
		
		[Inspectable(defaultValue="default", name='differential (default=3.5)')]
		public var differential:String = "default";
		
		[Inspectable(defaultValue="default", name='shiftTime (default=.25)')]
		public var shiftTime:String = "default";
		
		[Inspectable(defaultValue="default", name='efficiency (default=.7)')]
		public var efficiency:String = "default";
		
		[Inspectable(defaultValue="default", enumeration="default,automatic,manual", name='transmissionType (default=automatic)')]
		public var transmissionType:String = "default";
	}
}