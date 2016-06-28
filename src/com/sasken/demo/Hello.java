package com.sasken.demo;


class Hello{
	native int func1();
	native int func2(int param);

	public static void main() {
		Hello hello_obj =  new Hello();
		hello_obj.func1();
	}
}



