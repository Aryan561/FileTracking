using System;
using Microsoft.Owin;
using Owin;
[assembly: OwinStartupAttribute(typeof(FMATS.Startup))]
namespace FMATS
{
    public partial class Startup {
        public void Configuration(IAppBuilder app)
        {
            ConfigureAuth(app);
        }


    }
}
