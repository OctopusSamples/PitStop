using System.IO;
using Microsoft.AspNetCore;
using Microsoft.AspNetCore.Hosting;
using Serilog;

namespace PitStop
{
    public class Program
    {
        public static void Main(string[] args)
        {
            CreateWebHostBuilder(args).Build().Run();
        }

        public static IWebHostBuilder CreateWebHostBuilder(string[] args) =>
            WebHost.CreateDefaultBuilder(args)
                .UseKestrel()
                .UseIIS()
                .UseSerilog()
                .UseHealthChecks("/hc")
                .UseStartup<Startup>()
                .UseContentRoot(Directory.GetCurrentDirectory());
    }
}
