import std.stdio;
import views;
import vibe.vibe;

void main()
{
	writeln("Starting Inggs - Butterfly webmail server");

	/* Create a router */
	URLRouter router = new URLRouter();
	router.get("/", &login);

	/* Setup the HTTP server */
	HTTPServerSettings serverSettings = new HTTPServerSettings();
	serverSettings.port = 4444;
	serverSettings.bindAddresses = ["0.0.0.0", "::"];

	/* Attach the HTTP server's settings and the route handler */
	listenHTTP(serverSettings, router);

	writeln("Starting vibe event loop...");
	runApplication();
}
