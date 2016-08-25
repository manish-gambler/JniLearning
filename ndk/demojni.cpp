#include "demojni.h"
#include <iostream>

using namespace std;

extern int var;
int var = 5;

JNIEXPORT jint JNICALL Java_com_sasken_demo_Hello_func1
  (JNIEnv * env, jobject obj) {
	cout<<"My first jni program"<<endl;
	cout<<"var="<<++var<<endl;
	return 0;
}

JNIEXPORT jint JNICALL Java_com_sasken_demo_Hello_func2
  (JNIEnv * env, jobject obj, jint param1) {
	cout<<"value of integer parameter"<<param1<<endl;
	return 0;
}
