﻿using System;
//using System.ServiceModel;
using CoreWCF;
using CoreWCF.Configuration;
using Microsoft.AspNetCore.Builder;
using Microsoft.Extensions.DependencyInjection;
using NLog;
using WCell.Intercommunication;
using resources = WCell.AuthServer.Res.WCell_AuthServer;
using Microsoft.Extensions.Hosting;

namespace WCell.AuthServer.IPC
{
    public class Startup
    {
        //public const int HTTP_PORT = 8088;
        //public const int HTTPS_PORT = 8443;
        //public const int NETTCP_PORT = 8089;
        // Only used on case that UseRequestHeadersForMetadataAddressBehavior is not used
        //public const string HOST_IN_WSDL = "localhost";
        public static int HTTP_PORT = AuthServerConfiguration.Port;
        public static int HTTPS_PORT = AuthServerConfiguration.Port;
        public static int NETTCP_PORT = AuthServerConfiguration.Port;
        public static string HOST_IN_WSDL = AuthServerConfiguration.Host;

        public static void ConfigureServices(IServiceCollection services)
        {
            services.AddServiceModelServices();
        }

        //public static void Configure(IApplicationBuilder app, Microsoft.Extensions.Hosting.IHostingEnvironment env)
        public static void Configure(IApplicationBuilder app, IHostEnvironment env)
        {
            app.UseServiceModel(builder =>
            {
                Console.WriteLine("IS THIS USED???");
                builder.AddService<IPCServiceAdapter>();
                builder.AddServiceEndpoint<IPCServiceAdapter, IWCellIntercomService>(new CoreWCF.NetTcpBinding(), AuthServerConfiguration.IPCAddress);
            });
        }

        //public void ConfigureServices(IServiceCollection services)
        //{
        //    // Enable CoreWCF Services, enable metadata
        //    // Use the Url used to fetch WSDL as that service endpoint address in generated WSDL 
        //    services.AddServiceModelServices()
        //            .AddServiceModelMetadata()
        //            .AddSingleton<IServiceBehavior, UseRequestHeadersForMetadataAddressBehavior>();
        //}

        //public void Configure(IApplicationBuilder app)
        //{
        //    app.UseServiceModel(builder =>
        //    {
        //        // Add NetTcpBinding
        //        //.AddServiceEndpoint<EchoService, IEchoService>(new NetTcpBinding(), $"net.tcp://localhost:{NETTCP_PORT}/netTcp");

        //        // Configure WSDL to be available over http & https
        //        var serviceMetadataBehavior = app.ApplicationServices.GetRequiredService<CoreWCF.Description.ServiceMetadataBehavior>();
        //        serviceMetadataBehavior.HttpGetEnabled = serviceMetadataBehavior.HttpsGetEnabled = true;
        //    });
        //}
    }
}
