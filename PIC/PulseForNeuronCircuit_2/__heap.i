#line 1 "__heap.c"
#line 1 "__heap.c"






#line 28 "__heap.c"
 




#line 34 "__heap.c"


unsigned char	RAM		__heap[HEAP_SIZE];

#line 39 "__heap.c"
#line 49 "__heap.c"
#line 54 "__heap.c"
#line 56 "__heap.c"

void heapinit( void )
	{
#line 60 "__heap.c"

	((struct _AllocBlock RAM *)__heap)->Length	= sizeof __heap - sizeof __freelist.Length;
	((struct _AllocBlock RAM *)__heap)->Next	= NULL;

#line 65 "__heap.c"
#line 72 "__heap.c"

	__freelist.Length		= 0;
	__freelist.Next			= (struct _AllocBlock RAM *)__heap;
	}
//==============================================================================