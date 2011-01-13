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
	/**
	 * ...
	 * @author Doug Koellmer
	 */
	public class tdProxyCarBody extends tdProxySmartBody
	{
		public function tdProxyCarBody():void
		{
			defaultClassName = "TopDown.objects.tdCarBody";
		}
		
		[Inspectable(defaultValue="default", type='String', name='maxTurnAngle (default=45 degrees)')]
		public var maxTurnAngle:String = "default";
		
		[Inspectable(defaultValue="default", type='String', name='zCenterOfMass (default=1 meter above ground)')]
		public var zCenterOfMass:String = "default";
		
		[Inspectable(defaultValue="default",enumeration="default,true,false", name='tractionControl (default=true)')]
		public var tractionControl:String = "default";
	}
}