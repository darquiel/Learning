// Namespace Declaration
using System;

// Program start class
class InteractiveWelcome 
{

	// Main begins program execution.
	static void Main() 
	{

		// Write to console/get input
		Console.Write("What is your name?: ");
//		Console.Write("Hello, {0}! ", Console.ReadLine());

		string name = Console.ReadLine();
		Console.Write("Hello, {0}! ", name);
		Console.WriteLine("Welcome to the C# Station Tutorial!"); 

		// keep screen from going away
		//	when run from VS.NET
		Console.ReadLine();

	}
}
