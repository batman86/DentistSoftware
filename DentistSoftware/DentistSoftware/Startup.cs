using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(DentistSoftware.Startup))]
namespace DentistSoftware
{
    public partial class Startup
    {
        public void Configuration(IAppBuilder app)
        {
            ConfigureAuth(app);
        }
    }
}
