package com.sasken.demo;


class Hello{
	native int func1();
	native int func2(int param);

	public static void main(String[] args) {
		Hello hello_obj =  new Hello();
		hello_obj.func1();
		while(true);
	}

	static {
		System.loadLibrary("Demojni");
	}
}



