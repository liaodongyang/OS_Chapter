void test_function()
{
    return;
}


void main()
{
	/* code */
	char *video_memory = (char *) (0xb8000 + 80 * 2);
	*video_memory = 'X';
	test_function();
}