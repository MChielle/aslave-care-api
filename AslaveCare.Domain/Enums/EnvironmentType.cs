using System.ComponentModel;

public enum EnvironmentType
{
    [Description("Test")]
    Test,

    [Description("Prod")]
    Production,

    [Description("Localhost")]
    Localhost,

    [Description("Dev")]
    Development,

    [Description("Homol")]
    Homologation
}