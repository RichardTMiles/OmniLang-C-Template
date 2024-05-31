cdef extern from "carbon_python.h":
    void carbon_init()
    void carbon_shutdown()
    const char* carbon_version()
    void helloWorld()

def init():
    carbon_init()

def shutdown():
    carbon_shutdown()

def version():
    return carbon_version().decode('utf-8')

def hello_world():
    helloWorld()