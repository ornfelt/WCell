/*************************************************************************
 *
 *   file		: ServiceHost.cs
 *   copyright		: (C) The WCell Team
 *   email		: info@wcell.org
 *   last changed	: $LastChangedDate: 2008-06-08 00:55:09 +0800 (Sun, 08 Jun 2008) $
 
 *   revision		: $Rev: 458 $
 *
 *   This program is free software; you can redistribute it and/or modify
 *   it under the terms of the GNU General Public License as published by
 *   the Free Software Foundation; either version 2 of the License, or
 *   (at your option) any later version.
 *
 *************************************************************************/

using System;
using System.Net;
//using System.ServiceModel;
using NLog;
using WCell.Intercommunication;
using resources = WCell.AuthServer.Res.WCell_AuthServer;
using Microsoft.AspNetCore;
using Microsoft.AspNetCore.Builder;
using Microsoft.AspNetCore.Hosting;
//using Microsoft.Extensions.Logging;
//using Microsoft.Extensions.DependencyInjection;
//using Microsoft.Extensions.Hosting;
using CoreWCF;
using CoreWCF.Configuration;

namespace WCell.AuthServer.IPC
{
	/// <summary>
	/// Defines a host with the authentication service.
	/// </summary>
	public static class IPCServiceHost
	{
		private static readonly Logger log = LogManager.GetCurrentClassLogger();

        //private static ServiceHost host;
        //private static IHost _host;
        private static IWebHost host;

        //public static bool IsOpen
        //{
		//	//get { return host != null && host.State == CommunicationState.Opened; }
        //}

		public static bool IsOpen => host != null;

        public static void StartService()
        {
            if (!IsOpen)
            {
                //_host = CreateHostBuilder().Build();
                //_host.Start();

                string[] args;
                //IWebHost host = CreateWebHostBuilder(args).Build();
                IWebHost host = CreateWebHostBuilder().Build();
                host.Run();
                log.Info("IPC Service Started");
            }
        }

        // Listen on 8088 for http, and 8443 for https, 8089 for NetTcp.
        //public static IWebHostBuilder CreateWebHostBuilder(string[] args) =>
        //    WebHost.CreateDefaultBuilder(args)
        public static IWebHostBuilder CreateWebHostBuilder() =>
            WebHost.CreateDefaultBuilder()
            .UseKestrel(options => {
                options.ListenAnyIP(Startup.HTTP_PORT);
                options.ListenAnyIP(Startup.HTTPS_PORT, listenOptions =>
                {
                    listenOptions.UseHttps();
                    //if (Debugger.IsAttached)
                    //{
                    //    listenOptions.UseConnectionLogging();
                    //}
                });
            })
            .UseNetTcp(Startup.NETTCP_PORT)
            .UseStartup<Startup>();

        //public static IHostBuilder CreateHostBuilder() =>
        //    Host.CreateDefaultBuilder()
        //        .ConfigureServices((hostContext, services) =>
        //        {
        //            services.AddServiceModelServices();
        //            services.Configure<ServiceHostBuilderOptions>(options =>
        //            {
        //                options.BaseAddresses.Add(new Uri(AuthServerConfiguration.IPCAddress));
        //            });
        //        })
        //        .UseServiceModel(hostContext =>
        //        {
        //            var binding = new CoreWCF.NetTcpBinding(CoreWCF.SecurityMode.None);
        //            hostContext.AddService<IPCServiceAdapter>()
        //                       .AddEndpoint<IWCellIntercomService>(binding, "");
        //        });

        //public static IHostBuilder CreateHostBuilder() =>
        //    Host.CreateDefaultBuilder()
        //        .ConfigureServices((hostContext, services) =>
        //        {
        //            services.AddServiceModelServices();
        //            //services.AddServiceEndpoint<IWCellIntercomService, IPCServiceAdapter>(new NetTcpBinding(CoreWCF.SecurityMode.None), AuthServerConfiguration.IPCAddress);
        //            //services.AddServiceEndpoint<IPCServiceAdapter, IWCellIntercomService>(new CoreWCF.NetTcpBinding(), AuthServerConfiguration.IPCAddress);

        //            //services.Configure<ServiceHostOptions>(options =>
        //            //{
        //            //    options.ConfigureServiceHostBase<IWCellIntercomService>(serviceHost =>
        //            //    {
        //            //        var binding = new NetTcpBinding(System.ServiceModel.SecurityMode.None);
        //            //        serviceHost.AddServiceEndpoint<IWCellIntercomService>(binding, AuthServerConfiguration.IPCAddress);
        //            //    });
        //            //});
        //        });

        public static void StopService()
        {
            if (IsOpen)
            {
                host.StopAsync().Wait();
                host.Dispose();
                host = null;
                log.Info("IPC Service Shutdown");
            }
        }
	}
}