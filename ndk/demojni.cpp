#include "demojni.h"
#include <iostream>

using namespace std;

JNIEXPORT jint JNICALL Java_com_sasken_demo_Hello_func1
  (JNIEnv * env, jobject obj) {
	cout<<"My first jni program";
	return 0;
}

JNIEXPORT jint JNICALL Java_com_sasken_demo_Hello_func2
  (JNIEnv * env, jobject obj, jint param1) {
	cout<<"value of integer parameter"<<param1;
	return 0;
}
