﻿//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated by a tool.
//     Runtime Version:4.0.30319.42000
//
//     Changes to this file may cause incorrect behavior and will be lost if
//     the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace WCell.Core.Localization {
    using System;
    
    
    /// <summary>
    ///   A strongly-typed resource class, for looking up localized strings, etc.
    /// </summary>
    // This class was auto-generated by the StronglyTypedResourceBuilder
    // class via a tool like ResGen or Visual Studio.
    // To add or remove a member, edit your .ResX file then rerun ResGen
    // with the /str option, or rebuild your VS project.
    [global::System.CodeDom.Compiler.GeneratedCodeAttribute("System.Resources.Tools.StronglyTypedResourceBuilder", "17.0.0.0")]
    [global::System.Diagnostics.DebuggerNonUserCodeAttribute()]
    [global::System.Runtime.CompilerServices.CompilerGeneratedAttribute()]
    internal class WCell_Core {
        
        private static global::System.Resources.ResourceManager resourceMan;
        
        private static global::System.Globalization.CultureInfo resourceCulture;
        
        [global::System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1811:AvoidUncalledPrivateCode")]
        internal WCell_Core() {
        }
        
        /// <summary>
        ///   Returns the cached ResourceManager instance used by this class.
        /// </summary>
        [global::System.ComponentModel.EditorBrowsableAttribute(global::System.ComponentModel.EditorBrowsableState.Advanced)]
        internal static global::System.Resources.ResourceManager ResourceManager {
            get {
                if (object.ReferenceEquals(resourceMan, null)) {
                    global::System.Resources.ResourceManager temp = new global::System.Resources.ResourceManager("WCell.Core.Localization.WCell.Core", typeof(WCell_Core).Assembly);
                    resourceMan = temp;
                }
                return resourceMan;
            }
        }
        
        /// <summary>
        ///   Overrides the current thread's CurrentUICulture property for all
        ///   resource lookups using this strongly typed resource class.
        /// </summary>
        [global::System.ComponentModel.EditorBrowsableAttribute(global::System.ComponentModel.EditorBrowsableState.Advanced)]
        internal static global::System.Globalization.CultureInfo Culture {
            get {
                return resourceCulture;
            }
            set {
                resourceCulture = value;
            }
        }
        
        /// <summary>
        ///   Looks up a localized string similar to Client attempting login sent AUTH_LOGON_CHALLENGE remaining length as {0}, however {1} bytes are remaining.
        /// </summary>
        internal static string Auth_Logon_with_invalid_length {
            get {
                return ResourceManager.GetString("Auth Logon with invalid length", resourceCulture);
            }
        }
        
        /// <summary>
        ///   Looks up a localized string similar to Checking for {0} database.
        /// </summary>
        internal static string CheckingForDatabase {
            get {
                return ResourceManager.GetString("CheckingForDatabase", resourceCulture);
            }
        }
        
        /// <summary>
        ///   Looks up a localized string similar to ProtocolVersion: {0} ClientType: {1} Version: {2} Architecture: {3} OS: {4} Locale: {5} TimeZone: {6} IP: {7}.
        /// </summary>
        internal static string ClientInformationFourCCs {
            get {
                return ResourceManager.GetString("ClientInformationFourCCs", resourceCulture);
            }
        }
        
        /// <summary>
        ///   Looks up a localized string similar to Couldn&apos;t connect to database server.
        /// </summary>
        internal static string DatabaseConnectionFailure {
            get {
                return ResourceManager.GetString("DatabaseConnectionFailure", resourceCulture);
            }
        }
        
        /// <summary>
        ///   Looks up a localized string similar to {0} database does not exist, creating.
        /// </summary>
        internal static string DatabaseDoesNotExist {
            get {
                return ResourceManager.GetString("DatabaseDoesNotExist", resourceCulture);
            }
        }
        
        /// <summary>
        ///   Looks up a localized string similar to Failed to create the neccessary database!.
        /// </summary>
        internal static string DBCreateFailed {
            get {
                return ResourceManager.GetString("DBCreateFailed", resourceCulture);
            }
        }
        
        /// <summary>
        ///   Looks up a localized string similar to Couldn&apos;t load the DB script file!.
        /// </summary>
        internal static string DBScriptNotFound {
            get {
                return ResourceManager.GetString("DBScriptNotFound", resourceCulture);
            }
        }
        
        /// <summary>
        ///   Looks up a localized string similar to A fatal, unhandled exception was encountered!.
        /// </summary>
        internal static string FatalUnhandledException {
            get {
                return ResourceManager.GetString("FatalUnhandledException", resourceCulture);
            }
        }
        
        /// <summary>
        ///   Looks up a localized string similar to The PacketHandler for Packet {0} &apos;{1}&apos; has been overridden with &apos;{2}&apos;!.
        /// </summary>
        internal static string HandlerAlreadyRegistered {
            get {
                return ResourceManager.GetString("HandlerAlreadyRegistered", resourceCulture);
            }
        }
        
        /// <summary>
        ///   Looks up a localized string similar to Initialization complete! {0} successful steps, {1} non-fatal failures..
        /// </summary>
        internal static string InitComplete {
            get {
                return ResourceManager.GetString("InitComplete", resourceCulture);
            }
        }
        
        /// <summary>
        ///   Looks up a localized string similar to Failed to fully process all required initialization steps!.
        /// </summary>
        internal static string InitFailed {
            get {
                return ResourceManager.GetString("InitFailed", resourceCulture);
            }
        }
        
        /// <summary>
        ///   Looks up a localized string similar to Initializing database.
        /// </summary>
        internal static string InitializingDatabase {
            get {
                return ResourceManager.GetString("InitializingDatabase", resourceCulture);
            }
        }
        
        /// <summary>
        ///   Looks up a localized string similar to Initialization Pass #{0}.
        /// </summary>
        internal static string InitPass {
            get {
                return ResourceManager.GetString("InitPass", resourceCulture);
            }
        }
        
        /// <summary>
        ///   Looks up a localized string similar to Step &apos;{0}&apos; ({1}) failed to finish{2}.
        /// </summary>
        internal static string InitStepFailed {
            get {
                return ResourceManager.GetString("InitStepFailed", resourceCulture);
            }
        }
        
        /// <summary>
        ///   Looks up a localized string similar to Found and loaded {0} {1}!.
        /// </summary>
        internal static string InitStepsLoaded {
            get {
                return ResourceManager.GetString("InitStepsLoaded", resourceCulture);
            }
        }
        
        /// <summary>
        ///   Looks up a localized string similar to Step:  &apos;{0}&apos; ({1}).
        /// </summary>
        internal static string InitStepSucceeded {
            get {
                return ResourceManager.GetString("InitStepSucceeded", resourceCulture);
            }
        }
        
        /// <summary>
        ///   Looks up a localized string similar to Step &apos;{0}&apos; ({1}) was required to proceed; stopping!.
        /// </summary>
        internal static string InitStepWasRequired {
            get {
                return ResourceManager.GetString("InitStepWasRequired", resourceCulture);
            }
        }
        
        /// <summary>
        ///   Looks up a localized string similar to Cannot create packet handler delegate from method &apos;{0}&apos;: invalid method signature!.
        /// </summary>
        internal static string InvalidHandlerMethodSignature {
            get {
                return ResourceManager.GetString("InvalidHandlerMethodSignature", resourceCulture);
            }
        }
        
        /// <summary>
        ///   Looks up a localized string similar to IO task pool experiencing slowdowns..
        /// </summary>
        internal static string IOPoolSlowdown {
            get {
                return ResourceManager.GetString("IOPoolSlowdown", resourceCulture);
            }
        }
        
        /// <summary>
        ///   Looks up a localized string similar to The key &apos;{0}&apos; was not found in the configuration file!.
        /// </summary>
        internal static string KeyNotFound {
            get {
                return ResourceManager.GetString("KeyNotFound", resourceCulture);
            }
        }
        
        /// <summary>
        ///   Looks up a localized string similar to Manager: {0}, internal restart failed..
        /// </summary>
        internal static string ManagerInternalRestartFailed {
            get {
                return ResourceManager.GetString("ManagerInternalRestartFailed", resourceCulture);
            }
        }
        
        /// <summary>
        ///   Looks up a localized string similar to Manager: {0}, internal start failed..
        /// </summary>
        internal static string ManagerInternalStartFailed {
            get {
                return ResourceManager.GetString("ManagerInternalStartFailed", resourceCulture);
            }
        }
        
        /// <summary>
        ///   Looks up a localized string similar to Manager: {0}, internal stop failed..
        /// </summary>
        internal static string ManagerInternalStopFailed {
            get {
                return ResourceManager.GetString("ManagerInternalStopFailed", resourceCulture);
            }
        }
        
        /// <summary>
        ///   Looks up a localized string similar to Manager: {0}, has succesfully restarted..
        /// </summary>
        internal static string ManagerRestarted {
            get {
                return ResourceManager.GetString("ManagerRestarted", resourceCulture);
            }
        }
        
        /// <summary>
        ///   Looks up a localized string similar to Manager: {0}, restart failed..
        /// </summary>
        internal static string ManagerRestartFailed {
            get {
                return ResourceManager.GetString("ManagerRestartFailed", resourceCulture);
            }
        }
        
        /// <summary>
        ///   Looks up a localized string similar to Restarting Manager: {0}.
        /// </summary>
        internal static string ManagerRestarting {
            get {
                return ResourceManager.GetString("ManagerRestarting", resourceCulture);
            }
        }
        
        /// <summary>
        ///   Looks up a localized string similar to Manager: {0}, has succesfully started..
        /// </summary>
        internal static string ManagerStarted {
            get {
                return ResourceManager.GetString("ManagerStarted", resourceCulture);
            }
        }
        
        /// <summary>
        ///   Looks up a localized string similar to Manager: {0}, start failed..
        /// </summary>
        internal static string ManagerStartFailed {
            get {
                return ResourceManager.GetString("ManagerStartFailed", resourceCulture);
            }
        }
        
        /// <summary>
        ///   Looks up a localized string similar to Starting Manager: {0}.
        /// </summary>
        internal static string ManagerStarting {
            get {
                return ResourceManager.GetString("ManagerStarting", resourceCulture);
            }
        }
        
        /// <summary>
        ///   Looks up a localized string similar to Manager: {0}, stop failed..
        /// </summary>
        internal static string ManagerStopFailed {
            get {
                return ResourceManager.GetString("ManagerStopFailed", resourceCulture);
            }
        }
        
        /// <summary>
        ///   Looks up a localized string similar to Manager: {0}, has succesfully stopped..
        /// </summary>
        internal static string ManagerStopped {
            get {
                return ResourceManager.GetString("ManagerStopped", resourceCulture);
            }
        }
        
        /// <summary>
        ///   Looks up a localized string similar to Stopping Manager: {0}.
        /// </summary>
        internal static string ManagerStopping {
            get {
                return ResourceManager.GetString("ManagerStopping", resourceCulture);
            }
        }
        
        /// <summary>
        ///   Looks up a localized string similar to Manager: {0}, has thrown an error: {1}.
        /// </summary>
        internal static string ManagerThrownError {
            get {
                return ResourceManager.GetString("ManagerThrownError", resourceCulture);
            }
        }
        
        /// <summary>
        ///   Looks up a localized string similar to Missing database schema file, ensure you have a {0} file in your server folder.
        /// </summary>
        internal static string MissingSqlScript {
            get {
                return ResourceManager.GetString("MissingSqlScript", resourceCulture);
            }
        }
        
        /// <summary>
        ///   Looks up a localized string similar to Network task pool experiencing slowdowns..
        /// </summary>
        internal static string NetworkPoolSlowdown {
            get {
                return ResourceManager.GetString("NetworkPoolSlowdown", resourceCulture);
            }
        }
        
        /// <summary>
        ///   Looks up a localized string similar to GetResourceStream returned a null stream (file not found).
        /// </summary>
        internal static string NullStream {
            get {
                return ResourceManager.GetString("NullStream", resourceCulture);
            }
        }
        
        /// <summary>
        ///   Looks up a localized string similar to Performing next step: &apos;{0}&apos;.
        /// </summary>
        internal static string PerformingNextInitStep {
            get {
                return ResourceManager.GetString("PerformingNextInitStep", resourceCulture);
            }
        }
        
        /// <summary>
        ///   Looks up a localized string similar to Server has been shutdown..
        /// </summary>
        internal static string ProcessExited {
            get {
                return ResourceManager.GetString("ProcessExited", resourceCulture);
            }
        }
        
        /// <summary>
        ///   Looks up a localized string similar to Running {0}.
        /// </summary>
        internal static string RunningSqlScript {
            get {
                return ResourceManager.GetString("RunningSqlScript", resourceCulture);
            }
        }
        
        /// <summary>
        ///   Looks up a localized string similar to Starting server....
        /// </summary>
        internal static string ServerStarting {
            get {
                return ResourceManager.GetString("ServerStarting", resourceCulture);
            }
        }
        
        /// <summary>
        ///   Looks up a localized string similar to Stopping server....
        /// </summary>
        internal static string ServerStopping {
            get {
                return ResourceManager.GetString("ServerStopping", resourceCulture);
            }
        }
        
        /// <summary>
        ///   Looks up a localized string similar to Unhandled packet {0} ({1}), Size: {2} bytes.
        /// </summary>
        internal static string UnhandledPacket {
            get {
                return ResourceManager.GetString("UnhandledPacket", resourceCulture);
            }
        }
    }
}
