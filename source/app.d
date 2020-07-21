import std.stdio;
import views;
import vibe.vibe;

void main()
{
	writeln("Starting Inggs - Butterfly webmail server");

	URLRouter router = new URLRouter();

	router.get("/", &login);

	/* TODO: Attach router */

	writeln("Starting vibe event loop...");
	runApplication();
}
